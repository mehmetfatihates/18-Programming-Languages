- **Rules of normalization**
- **Denormalization**
- **Partitioning data**
- **Materialized views**
- **Read replicas**
- **Solution: Design a data model for analytics**

# Rules of normalization

Normalization: Minimize the risk of data anomalies.
Data Anomalies: Errors or inconsistencies we want to avoid.

##### Data Anomalies

- Update anomaly
- Insertion anomaly
- Deletion anomaly

##### Avoiding Anomalies

- First Normal Form: Values in each column of a table must be atomic.
- Second Normal Form: All attributes not part of the key depend on the key.
- Third Normal Form: No transitive dependencies.

##### OLTP

Online transaction process systems

- Online transaction processing
- Many reads and writes
- Many processes
- Often normalized to third normal form

##### Analytical

- Data analysis
- Many reads by many processes
- Many wirtes by few processes
- Often denormalized

# Denormalization

##### Characteristics

- Redundant data
- Non-atomic values
- Transitive dependencies

##### Reduce risk of Anomalies

- Few updates
- Batch inserts; data transformed before inserts
- Streaming inserts; simple data structures
- Eliminate the need for complex joins

# Partitioning Data

##### Partitioning

- Large tables can be difficult to query efficiently
- Split tables by rows or columns into partitions

##### Horizontal Partitioning

- Limit scans to subset of partitions
- Local indexes for each partition
- Efficient adding and deleting

##### Vertical Partitioning

- Increase number of rows in data block
- Global indexes for each partiton
- Can reduce I/O

##### Range Partitioning

- Type of horizontal partitioning
- Partition on non-overlapping keys
- Partition by date is common
- Numeric range
- Alphabetic range

##### Hash Partitioning

- Partition on modulus of hash of partition key
- Data does not logically group into sub-groups
- Want even distiribution of data across partitions

```sql
CREATE TABLE iot.sensor_msmt (
    sensor_id int not null,
    msmt_date date not null,
    temperature int,
    humidity int)
    PARTITION BY RANGE (msmt_date);
```

<BR>

```sql
CREATE TABLE io_sensor_msmt_y2021m01 PARTITION OF iot.sensor_msmt
    FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
```

<BR>

```sql
CREATE TABLE io_sensor_msmt_y2021m02 PARTITION OF iot.sensor_msmt
    FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
```

# Materialized views

- Persisted results of a query
- Excute a query once
- A form of caching
- Trading space for time

##### When to Use Materialized Views

- Long-running queries
- Complex queries, especially joins
- Compute aggregates or other derived data
- Seperate read and write operations

##### When to Not Use Materialized Views

- Eventual consistency
- Cost of update process
- Concurrent reads during update ?
- Size of materialized view data
- Refresh frequency

```sql
SELECT
    l.hotel_id, l.state_province, l.country,
    e.year, e.annual_payroll, e.health_insurance, e.supplies
FROM
    landon.locations l
LEFT JOIN
    landon.expenses e
ON (l.hotel_id = e.hotel_id)
```

<br>

```sql
CREATE MATERIALIZED VIEW landon.mv_locations_expenses AS
(
SELECT
    l.hotel_id, l.state_province, l.country,
    e.year, e.annual_payroll, e.health_insurance, e.supplies
FROM
    landon.locations l
LEFT JOIN
    landon.expenses e
ON (l.hotel_id = e.hotel_id)
)
```

<br>

```SQL
SELECT * FROM landon.mv_locations_expenses;
```

<br>

```sql
REFRESH MATERIALIZED VIEW landon.mv_locations_expenses;
```

# Read Replicas

- Primary can focus on writes
- Multiple replicas can scale to meet read load
- Especially useful when more read than write workload
- Need consider eventual consistency

# Design a Model to Support the Requirements

- High-level model
- What kind of structures
  <br>

- Low latency
- Access to data older than one hour

##### Solution

Write Sensor Data to a Table
Use Materialized Views

- Materialized views should be used to generate views of aggregated data by hour and by day.

Use Read Replica If Necessary

- If data scientists need access to low-level detail and aggregates
