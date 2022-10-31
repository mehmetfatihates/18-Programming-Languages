- From declarative SQL to procedural execution plan
- Scanning tables and indexes
- Joining tables
- Partitioning data

# From declarative SQL to procedural execution plan

### Procedural Language Structure

- Many programming languages are procedural
- You specify how to do something
- Directly manipulate data structures in an order determined by your code

### SQL Uses Execution Plans

- SQL query processors take declarative statements
- And create procesural plans
- Which are a set of steps that scan, filter and join data

# Scanning tables and indexes

- Scanning is simple
  - Scanning looks at each row
  - Fetch data block containing row
  - Apply filter or condition
  - Cost of query based on number of rows in the table
- But not that simple
  - We are assuming row data stored together in data blocks on disk
  - Not the case with columnar storage
  - Used in data warehouses and big data databases

### Cost Based on Number of Rows

- Scanning small tables is efficient
- Scanning large tables can be efficient if few queries
- Scanning large tables repeatedly is inefficient

### Indexes Save Scanning

- Indexes are ordered
- Faster to search index for an attribute value
- Points to location of row
- Example: filter by checking index for match, then retrieve row

### Type of Indexes

- B-tree, for equality and range queries
- Hash indexes, for equality
- Bitmap, for inclusion
- Specialized indexes, for geo-spatial or user-defined indexing strategies

# Joining Tables

### How to match rows ?

- Foreign keys in one table
- Primary key in another table

1. Nested Loop Join
   - Compare all rows in both tables to each other
     - Loop through one table
     - For each row, loop through the other table
     - At each step, compare keys
     - Simple to implement
     - Can be expensive
2. Hash Join
   - Calculate value of key and join based on matching hash values
     - Compute hash values of key values in smaller table
     - Store in hash table, which has hash value and row attributes
     - Scan larger table; find rows from smaller hash table
3. Sort Merge Join
   - Sort both tables and then join rows while taking advantage of order
     - Sort both tables
     - Compare rows like nested loop join, but ...
     - Stop when it is not possible to find a match later in the table beause of the sort order
     - Scan the driving table only once

# Partitioning Data

- Storing table data in multiple sub-tables, known as partitons
- Used to improve query, load, and delete operations
- Used for large tables
- When subset of data is accessed or changed
- Can be expensive
