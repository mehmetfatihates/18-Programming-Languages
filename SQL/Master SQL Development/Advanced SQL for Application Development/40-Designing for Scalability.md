- Overview of partitioning
- Range partitioning
- List partitioning
- Hash partitioning
- Querying partitioned tables
- Using read-only replicas
- Challenge: Define a partitoned table

# Overview of partitioning

### Horizontal Partitioning

- Large tables can be difficult to query efficiently
- Split tables by rows into partitions
- Treat each partition like a table

### Benefits of Horizontal Partitoing

- Limit scans to subset of partitions
- Local indexes for each partition
- Efficient adding and deleting

1. Data Warehouses

- Partiton on time
- Query on time
- Delete by time

2. Timeseries

- Most likely, query latest data
- Summarize data in older partitions

3. Natuarally Partition Data

- Retailer, by geography
- Data science, by product category

### Vertical Partitoning

- Separate columns into multiple tables
- Keep frequently queried columns together
- Use same primary key in all tables

### Benefits of Vertical Partitoning

- Increases number of rows in data block
- Global indexes for each partition
- Can reduce I/O
- Columnar data storage offer similar benefits

1. Data Warehouses

- Partiton on groups of attributes
- Delete by time

2. Many Attributes

- Wide variety of products, each with different attributes

3. Data Analtyics

- Statistics on subset of attributes
- After factor analysis

# Range partitioning

- Type of horizontal partitioning
- Partition on nonoverlapping keys
- Partitioning by date is common
- Numeric range
- Alphabetic range

1. Partition Key

- Determines which partition is used for data

2. Partition Bounds

- Minimum and maximum values allowed in the partiton

3. Constraints

- Each partition can have its own indexes, constraints defaults

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

### When to Use Partition by Range

- Query latest data
- Comparative queries, for example, same time last year
- Report within range, for example, numeric identifier range
- Drop data after a period of time

# List partitioning

- Type of horizontal partitioning
- Partition on non-overlapping keys
- Partition on value or list of values

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

### When to Use Partition by List

- Data logically groups into subgroups
- Often query within subgroups
- Data not time oriented enough to warrant range partition by time

# Hash partitioning

- Type of horizontal partitioning
- Partition on modulus of hash of partition key

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

# Partition by hash example

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

# Querying partitioned tables

- Partition Key
  - Partition key determines which rows are stored in a particular partition
  - SQL statements should use partition key in WHERE clauses

```sql
SELECT *
FROM sales_history
WHERE month_num = 3
```

# Using read-only replicas

- Replicas
  - Reading and writing to same database disks can create contention
  - Writing locks rows
  - Reading does not need to lock rows
- Read-Only Replicas
  - Copy of data within a single database
  - Always write to primary, which updates replica
  - Read(SELECT) from replica reduces I/O load on primary disk

# Challenge: Define a partitoned table

```SQL
SELECT * FROM product_orders

SELECT * FROM product_orders WHERE product_id = %s

CREATE TABLE public.sales_history(
    product_id integer NOT NULL,
    product_name character varying(50) NOT NULL ,
    product_type character varying(50) NOT NULL ,
    total_units_sold integer NOT NULL ,
    month_of_sale integer NOT NULL,
    PRIMARY KEY (month_of_sale,product_id)
)
PARTITION BY  RANGE (month_of_sale);

CREATE TABLE sales_history_month1 PARTITION OF sales_history
    FOR VALUES FROM (1) TO (2);

CREATE TABLE sales_history_month2 PARTITION OF sales_history
    FOR VALUES FROM (2) TO (3);

CREATE TABLE sales_history_month3 PARTITION OF sales_history
    FOR VALUES FROM (3) TO (4);
```
