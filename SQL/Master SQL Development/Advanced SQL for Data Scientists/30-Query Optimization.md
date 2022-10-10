- EXPLAIN and ANALYZE commands
- Generating data with generate_sequence
- Generating time series data
- Analyzing a query with WHERE clauses and indexes
- Analyzing a query with a join
- Challange: Optimize a query using an explain plan

# EXPLAIN and ANALYZE commands

### Explain

- Nested Loop Join
  - Compare all rows in both tables to each other.
- Hash Join
  - Calculate hash value of key; join based on matching hash values.
- Sort Merge Join
  - Sort both tables and then join rows while taking advantage of order.

### Analyze

- PLan builder relies on statistics about data in tables
- Usually statistics are kept up to date (autovacuum)
- Sometimes statistics can get out of date
- ANALYZE command updates statistics

# Generating data with generate_sequence

```sql
CREATE TABLE iot.sensor_msmt (
    sensor_id int not null,
    msmt_date timestamp not null,
    temperature int,
    humidity
) PARTITION  BY RANGE (msmt_date);

CREATE TABLE iot.sensor_msmtt_y2021m01 PARTITION OF iot.sensor_msmt
    FOR VALUES FROM ('2021-01-01') TO ('2021-02-01');

CREATE TABLE iot.sensor_msmtt_y2021m02 PARTITION OF iot.sensor_msmt
    FOR VALUES FROM ('2021-02-01') TO ('2021-03-01');
```

```SQL
SELECT * FROM generate_series(1,100)
```

| generate_series |
| :-------------- |
| 1               |
| 2               |
| 3               |
| 4               |
| 5               |
| 6               |
| 7               |
| 8               |
| 9               |
| 10              |
| 11              |
| 12              |
| 13              |
| 14              |
| 15              |

<br>

```sql
select * from generate_series('2021-01-01 00:00'::timestamp,'2021-02-15 00:00'::timestamp,'1 minutes')
```

| generate_series            |
| :------------------------- |
| 2021-01-01 00:00:00.000000 |
| 2021-01-01 00:01:00.000000 |
| 2021-01-01 00:02:00.000000 |
| 2021-01-01 00:03:00.000000 |
| 2021-01-01 00:04:00.000000 |
| 2021-01-01 00:05:00.000000 |
| 2021-01-01 00:06:00.000000 |
| 2021-01-01 00:07:00.000000 |
| 2021-01-01 00:08:00.000000 |
| 2021-01-01 00:09:00.000000 |
| 2021-01-01 00:10:00.000000 |
| 2021-01-01 00:11:00.000000 |
| 2021-01-01 00:12:00.000000 |

# Generating time series data

```sql
select * from (select * from generate_series(1,100)) as t1, (select * from generate_series('2021-01-01 00:00'::timestamp,'2021-02-15 00:00'::timestamp,'1 minutes')) as t2
```

| generate_series | generate_series            |
| :-------------- | :------------------------- |
| 1               | 2021-01-01 00:00:00.000000 |
| 1               | 2021-01-01 00:01:00.000000 |
| 1               | 2021-01-01 00:02:00.000000 |
| 1               | 2021-01-01 00:03:00.000000 |
| 1               | 2021-01-01 00:04:00.000000 |
| 1               | 2021-01-01 00:05:00.000000 |
| 1               | 2021-01-01 00:06:00.000000 |
| 1               | 2021-01-01 00:07:00.000000 |
| 1               | 2021-01-01 00:08:00.000000 |
| 1               | 2021-01-01 00:09:00.000000 |
| 1               | 2021-01-01 00:10:00.000000 |
| 1               | 2021-01-01 00:11:00.000000 |
| 1               | 2021-01-01 00:12:00.000000 |

```sql
with sensors_datetimes as (
select * from (select * from generate_series(1,100)) as t1, (select * from generate_series('2021-01-01 00:00'::timestamp,'2021-02-15 00:00'::timestamp,'1 minutes')) as t2
)

select
       sd.*,
       floor(random()*30) as temperature,
       floor(random()*80) as humidity
from sensors_datetimes sd
```

| generate_series | generate_series            | temperature | humidity |
| :-------------- | :------------------------- | :---------- | :------- |
| 1               | 2021-01-01 00:00:00.000000 | 15          | 21       |
| 1               | 2021-01-01 00:01:00.000000 | 12          | 67       |
| 1               | 2021-01-01 00:02:00.000000 | 22          | 69       |
| 1               | 2021-01-01 00:03:00.000000 | 20          | 18       |
| 1               | 2021-01-01 00:04:00.000000 | 29          | 63       |
| 1               | 2021-01-01 00:05:00.000000 | 20          | 49       |
| 1               | 2021-01-01 00:06:00.000000 | 27          | 23       |
| 1               | 2021-01-01 00:07:00.000000 | 25          | 31       |
| 1               | 2021-01-01 00:08:00.000000 | 23          | 16       |
| 1               | 2021-01-01 00:09:00.000000 | 13          | 19       |
| 1               | 2021-01-01 00:10:00.000000 | 2           | 55       |
| 1               | 2021-01-01 00:11:00.000000 | 25          | 59       |
| 1               | 2021-01-01 00:12:00.000000 | 16          | 61       |

<br>

# Analyzing a query with WHERE clauses and indexes

```sql
EXPLAIN SELECT *
FROM iot.sensor_msmt
WHERE sensor_id between 10 and 20;
```

<br>

```sql
create index  idx_sensor_msmt_id on iot.sensor_msmt(sensor_id);
```

# Analyzing a query with a join

```SQL
SELECT i from generate_series(1,100) as i
```

| i   |
| :-- |
| 1   |
| 2   |
| 3   |
| 4   |
| 5   |
| 6   |
| 7   |
| 8   |
| 9   |
| 10  |
| 11  |
| 12  |
| 13  |
| 14  |
| 15  |

<br>

```sql
with sensor_ids as (SELECT i from generate_series(1,100) as i)
select i as id, 'sensor' || i::text as sensor_name
from sensor_ids
```

| id  | sensor_name |
| :-- | :---------- |
| 1   | sensor1     |
| 2   | sensor2     |
| 3   | sensor3     |
| 4   | sensor4     |
| 5   | sensor5     |
| 6   | sensor6     |
| 7   | sensor7     |
| 8   | sensor8     |
| 9   | sensor9     |
| 10  | sensor10    |
| 11  | sensor11    |
| 12  | sensor12    |
| 13  | sensor13    |
| 14  | sensor14    |
| 15  | sensor15    |

<br>

```sql
create table iot.sensors as (
    with sensor_ids as (SELECT i from generate_series(1,100) as i)
    select i as id, 'sensor' || i::text as sensor_name
    from sensor_ids
)
```

```sql
explain select
    s.snsor_name,
    sm.msmt_date,
    sm.temperature,
    sm.humadity
from
    iot.sensor_msmt as sm
left join
    iot.sensors as s
on
    sm.sensor_id = s.id
where
    s.id = 40
```

<br>

# Challenge: Optimize a query using an explain plan

- Use EXPLAIN to view the query execution plan
- Look for full scans and indexing opportunities
- Assess how indexes are used with joins
- Look for opportunities to filter the dataset size
- Run ANALYZE to ensure statistics are up to date
