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
