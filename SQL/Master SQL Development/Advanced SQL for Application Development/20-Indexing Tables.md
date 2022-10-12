- Overview of index types
- Using B-tree indexes and range scans
- Using hash indexes and equality operations
- Covering indexes
- Indexes and bulk data loading
- Avoiding index locks
- Challange: Define a B-tree and a hash index

# Overview of index types

### Index

- Data structure used to improve time to access data
- Key value
- Key is an attribute of row to retrieve
- Value is alocation to the row to retrieve

### Type of Indexes

- B-tree
- Hash
- Bitmap
- Specialized indexes

# Using B-tree indexes and range scans

- Most common type of index
- Used when large number of possible values in a column(high cardinality)
- Rebalances as needed
- Time to access is based on depth of the three(logarithmic time)

# Using hash indexes and equality operations

- Function for mapping arbitrary length data to a fixed-size string f(x) = y
- Hash values virtually unique
- Even slight changes in input prodecuce new hash
- Size of hash value depends on algorithm used
- No order preserving with hash functions
- Similar inputs have vastly different outputs
- Using Hash Indexes
  1. Equality operations only
  2. Can be smaller than B-tree indexes(PostgreSQL)
  3. Comparable with speed of B-tree build and access

# Covering indexes

### Using Indexes

- Query plan builder determines which indexes to use
- Location of rows retrieved from index
- Rows retrieved from cache or persistent storage
- Filtering, joining, functions and so on are applied
- Results returned

### Covering Index

- All columns referenced in a query are in index
- No need to retrieve data from the table
- Saves a seek operation

# Indexes and bulk data loading

- Sequence of Operations
- Indexing While Loading
  - Large number of rows inserted
  - Each time a row is inserted the index is updated
  - Alternating table and index updating
- Alternate Sequence of Operations
- Bulk Loading without Indexes
  - Drop index before bulk load
  - Insert data
  - Create index
  - More efficient and can take advantage of bulk loading optimizations

# Avoiding index locks

- Whey Rebuild an Index ?
  - Index may become corrupted
  - Index parameters change
  - Fragmented pages in b-tree
- During Indexing on PostgreSQL
  - Locks table for writes(INSERT, UPDATE, DELETE)
  - Allows reads (SELECT)
  - Can lead to index lock errors in production
  - CREATE INDEX CONCURRENTLY
  - Builds new index on table without blocking writes

# Challange: Define a B-tree and a hash index

```sql
CREATE INDEX idx_lname_fname
ON customers USING tree
(last_name, first_name)
```

```sql
CREATE INDEX idx_product_name
ON products USING hash
(product_name)
```
