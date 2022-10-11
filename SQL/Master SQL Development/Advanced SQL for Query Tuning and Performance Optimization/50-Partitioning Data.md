- Horizontal vs. vertical partitioning
- Partition by range
- Partition by range example
- Partition by list
- Partition by list example
- Partition by hash
- Parititon by hash example

# Horizontal vs. vertical partitioning

### Horizontal Partitioning

- Large tables can be difficult to query efficiently
- Split tables by rows into partitions
- Treat each partition like a table
- Benefits of Horizontal Partitioning
  - Limit scans to subset of partitions
  - Local indexes for each partition
  - Efficient adding and deleting

1. Data Warehouses

- Partition on time
- Query on time
- Delete by time

2. Timeseries

- Most likely query latest data
- Summarize data in older partitions

3. Naturally Partition Data

- Retailer, by geography
- Data sciencei by product category

### Vertical Partitioning

- Implement as separate tables
- No partitioning-specific definitions are required
- Separate columns into multiple tables
- Keep frequently queried columns together
- Use same primary key in all tables
- Benefits of Vertical Partitioning
  - Increases number of rows in data block
  - Global indexes for each partition
  - Can reduce I/O
  - Columnar data storage offer similar benefits

1. Data Warehouses

- Partition on groups of attributes

2. Many Attributes

- Wide variety of products, each with different attributes

3. Data Analytics

- Statistics on subset of attributes; after factor analysis

* Partition by range

- Type of horizontal partitioning
- Partition on non-overlapping keys
- Partition by date is common
- Numeric range

1. Partition Key

- Determines which partition is used for data

2. Partition Bounds

- Minumum and maximum values allowed in the partition

3. Constraints

- Each partition can have its own indexes, constraints and defaults

### IOT Example

```sql
CREATE TABLE iot_measurement
(
    location_id int not null,
    measure_date date not null,
    temp_celcius int,
    rel_humidity_pct int
)
PARTITION BY RANGE (measure_date);
```

### When to use partition by range

- Query latest data
- Comparative queries, for example, same time last year
- Report within range, for example numeric identifier range
- Drop data after a period of time

* Partition by range example

```sql
CREATE TABLE iot_measurement
(
    location_id int not null,
    measure_date date not null,
    temp_celcius int,
    rel_humidity_pct int
)
PARTITION BY RANGE (measure_date);
```

```SQL
CREATE TABLE iot_measurement_wk1_2019 PARTITION OF iot_measurement
FOR VALUES FROM ('2019-01-01') TO ('2019-01-08')

CREATE TABLE iot_measurement_wk2_2019 PARTITION OF iot_measurement
FOR VALUES FROM ('2019-01-08') TO ('2019-01-15')

CREATE TABLE iot_measurement_wk3_2019 PARTITION OF iot_measurement
FOR VALUES FROM ('2019-01-15') TO ('2019-01-22')
```

- Partition by list

* Type of horizontal partitioning
* Partition on non-overlapping keys
* Partition on value or list of values

1. Partition key

- Determines which partition is used for data

2. Partition Bounds

- List of values for a partition

3. Constraints

- Each partition can have its own indexes, constraints and defaults

```sql
CREATE TABLE products
(
    prod_id int not null,
    prod_name text not null,
    prod_short_descr text not null,
    prod_long_descr text not null,
    prod_category varchar
)
PARTITION BY LIST (prod_category);
```

### When to use Partition List

- Data logically groups into subgroups
- Often query within subgroups
- Data not time oriented enough to warrant range partition by time

* Partition by list example

```sql
CREATE TABLE products
(
    prod_id int not null,
    prod_name text not null,
    prod_short_descr text not null,
    prod_long_descr text not null,
    prod_category varchar
)
PARTITION BY LIST (prod_category);
```

```sql
CREATE TABLE product_clothing PARTITION OF products
FOR VALUES IN ('casual_clothing','business_attire','formal_clothing');

CREATE TABLE product_electronics PARTITION OF products
FOR VALUES IN ('mobile_phone','tablets','laptop');

CREATE TABLE product_kitchen PARTITION OF products
FOR VALUES IN ('food_processor','cultery','blenders');
```

- Partition by hash

* Type of horizontal partitioning
* Partition on modulus of hash of partition key

1. Partition Key

- Determines which partition is used for data

2. Modulus

- Number of partitions

3. Availability

- PostgreSQL 11+, Oracle, MySQL

### When to use Partition by Hash

- Data does not logically group into subgroups
- Want even distribution of data across partitions
- No need for subgroup-specific operations for example drop a partiton

* Partition by hash example

```sql
CREATE TABLE customer_interactions
(
    ci_id int not null,
    ci_url text not null,
    time_at_url int not null,
    click_sequence int not null
)
PARTITION BY HASH (ci_id)
```

```SQL
CREATE TABLE customer_interactions_1 PARTITION OF customer_interactions
FOR VALUES WITH (MODULUS 5, REMAINDER 0);

CREATE TABLE customer_interactions_2 PARTITION OF customer_interactions
FOR VALUES WITH (MODULUS 5, REMAINDER 1);

CREATE TABLE customer_interactions_3 PARTITION OF customer_interactions
FOR VALUES WITH (MODULUS 5, REMAINDER 2);

CREATE TABLE customer_interactions_4 PARTITION OF customer_interactions
FOR VALUES WITH (MODULUS 5, REMAINDER 3);

CREATE TABLE customer_interactions_5 PARTITION OF customer_interactions
FOR VALUES WITH (MODULUS 5, REMAINDER 4);
```
