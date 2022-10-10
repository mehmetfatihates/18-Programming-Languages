- Federated queries
- Bloom filters
- Hstroe for key-value pairs
- JSON for semi-structured data
- Hierarchical data and ltrees
- Challange: Design a table to support unstructured data

# Federated Queries

### FDW and Datalinks

- Foreign-data wrappers
- Allow for viewing data outside of the database
- Datalinks provide database functionality

### CREATE EXTENSION and SERVER

```sql
CREATE EXTENSION postgres_fdw
CREATE SERVER external_db_server
    FOREIGN DATA WRAPPER postgres_fdw
    OPTIONS (host 'mydb.example.com',dbname 'data_warehouse')
```

### Map Users

```sql
CREATE USER MAPPING FOR CURRENT_USER
    SERVER external_db_server
    OPTIONS (user 'analyst',password 'aasdqwe++^%^21');
```

### Import Schema

```SQL
CREATE SCHEMA external_sales;
IMPORT FOREIGN SCHEMA sales
    FROM SERVER external_db_server
    INTO external_sales;
```

### CREATE Foreign Table

```sql
CREATE FOREIGN TABLE page_visit_log(
        log_time timestamp,
        user_name text,
        web_page text
) SERVER log_data
OPTIONS (filename '/app/ecommerce/logs/page_vists.log',format 'csv');
```

# Bloom Filter

- Space efficient method for determining set membership
- Useful for quickly finding sets with values
- Lossy representation of data
- Probablistic data structure
  - May product false positives
  - Never produces false negatives
  - Accuracy is a function of the number of bits used in the filter
  - In many cases 10 bits per element will yield 1% false positive rate

### Bloom Filter Indexes

- Postgres extension provides for Bloom Filter indexes
- Useful when:
  - Table has many attributes
  - Queries filter on many different combinations of attribute
- B-tree indexes are faster but many require many indexes

### Limitations

- Bloom filter indexes support only the equality operator on int4 and text data types
- B-tree indexes support equality inequality and ranges

### Create Bloom Filter Index

```sql
CREATE EXTENSION bloom
CREATE INDEX idx_locations_blm ON locations
    USING bloom (city,state_province,country);
```

```sql
CREATE INDEX idx_locations_blm ON locations
    USING bloom (city,state_province,country)
    WITH (length=128);
```

# Hstore for key-value pairs

### Hstore

- Data type for storing sets of key-value pairs
- Column defined as hstore data type

```sql
CREATE EXTENSION hstore
CREATE TABLE my_kv_table (id serial,primary key kv_set hstore)
```

- Key-value pairs represented as string
  - key1 => value1, key2 =>value2

# JSON for Semi-Structured Data
