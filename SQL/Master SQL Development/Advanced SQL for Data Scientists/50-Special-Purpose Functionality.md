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

- https://www.postgresql.org/docs/9.5/functions-json.html-

# Hierarchical data and ltrees

```sql
CREATE EXTENSION ltree;
CREATE TABLE paths_to_nodes(
    id serial primary key,
    node text,
    path ltree);
```

```sql
CREATE INDEX idx_paths_to_nodes ON paths_to_nodes USING gist(path)
```

```SQL
INSERT INTO paths_to_nodes (node,path) values('A','A');
INSERT INTO paths_to_nodes (node,path) values('B','A.B');
INSERT INTO paths_to_nodes (node,path) values('C','A.C');
INSERT INTO paths_to_nodes (node,path) values('D','A.B.D');
INSERT INTO paths_to_nodes (node,path) values('E','A.B.E');
INSERT INTO paths_to_nodes (node,path) values('F','A.C.F');
INSERT INTO paths_to_nodes (node,path) values('G','A.C.G');
INSERT INTO paths_to_nodes (node,path) values('H','A.B.D.H');
INSERT INTO paths_to_nodes (node,path) values('I','A.B.D.I');
INSERT INTO paths_to_nodes (node,path) values('J','A.B.D.J');
INSERT INTO paths_to_nodes (node,path) values('K','A.C.F.K');
```

```SQL
SELECT * FROM paths_to_nodes;
```

| id  | node | path    |
| :-- | :--- | :------ |
| 1   | A    | A       |
| 3   | B    | A.B     |
| 4   | C    | A.C     |
| 5   | D    | A.B.D   |
| 6   | E    | A.B.E   |
| 7   | F    | A.C.F   |
| 8   | G    | A.C.G   |
| 9   | H    | A.B.D.H |
| 10  | I    | A.B.D.I |
| 11  | J    | A.B.D.J |
| 12  | K    | A.C.F.K |

```sql
SELECT * FROM paths_to_nodes
WHERE 'A.B.D' @> path
```

| id  | node | path    |
| :-- | :--- | :------ |
| 5   | D    | A.B.D   |
| 9   | H    | A.B.D.H |
| 10  | I    | A.B.D.I |
| 11  | J    | A.B.D.J |

```sql
SELECT * FROM paths_to_nodes
WHERE '*.B.*' ~ path
```

| id  | node | path    |
| :-- | :--- | :------ |
| 3   | B    | A.B     |
| 5   | D    | A.B.D   |
| 6   | E    | A.B.E   |
| 9   | H    | A.B.D.H |
| 10  | I    | A.B.D.I |
| 11  | J    | A.B.D.J |

```SQL
SELECT * FROM paths_to_nodes
WHERE '*.B.*{1}' ~ path
```

| id  | node | path  |
| :-- | :--- | :---- |
| 5   | D    | A.B.D |
| 6   | E    | A.B.E |

```SQL
SELECT * FROM paths_to_nodes
WHERE '*.B.*{0,2}' ~ path
```

| id  | node | path    |
| :-- | :--- | :------ |
| 3   | B    | A.B     |
| 5   | D    | A.B.D   |
| 6   | E    | A.B.E   |
| 9   | H    | A.B.D.H |
| 10  | I    | A.B.D.I |
| 11  | J    | A.B.D.J |

```SQL
SELECT * FROM paths_to_nodes
WHERE '*.B.*{1}' ~ path
```

# Challange: Design a table to support unstructured data

- Semi-structured
- Need indexes to support query performance
- Could use columns for eaxh attribute but not practical to maintain
- A jsonb column provides document structure and indexing
