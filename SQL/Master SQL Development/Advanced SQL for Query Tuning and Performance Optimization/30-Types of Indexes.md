- Indexing
- B-tree indexes
- B-tree index example plan
- Bitmap indexes
- Bitmap index example plan
- Hash index
- Hash index example plan
- PostgreSQL-specific indexes

# Indexing

- Speed up access to data
- Help enforce constraints
- Indexes are ordered
- Typically smaller than tables

1. Main Memory
   - 100 ns
2. Read 1 MB SSD
   - 1,000,000 ns (1 ms)
3. Read 1 MB HDD
   - 20,000,000 ns (20 ms)

### Implementing Indexes

- Data structure separate from table
- Sometimes duplicates some data, for example key
- Organized differently than table data

### Types of Indexes

- B-tree
- Bitmap
- Hash
- Special purpose indexes

# B-tree Indexes

- Most common type of index
- Used when a large number of possible values in a column(high cardinality)
- Rebalances as needed
- Time to access is based on depth of tree (logarithmic time)
