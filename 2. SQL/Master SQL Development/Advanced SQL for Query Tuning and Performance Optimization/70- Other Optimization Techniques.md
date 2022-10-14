- Collect statistics about data in tables
- Hints to the query optimizer
- Parallel query execution
- Miscellaneous tips

# Collect statistics about data in tables

### What Schemas Contain

- Tables
- Indexes
- Constraints
- Views
- Materialized views
- And statistics about the distribution of data in tables

1. Size of Data

- Number of rows amount of stroge used

2. Frequency Data

- Fraction of nulls, number of distinct values frequent values

3. Distribution

- Histogram describing spread of data

### Postgres ANALYZE Command

- Collect statistics on columns, tables or schema
- Not human readable/useful
- Run automatically by AUTOVACUUM daemon or manually

### Postgres VACUUM Command

- Reclaim space of updated data
- VACUUM reclaims space
- VACUUM(FULL)[tabelname] locks tables and reclaims more space
- VACUUM(FULL,ANALYZE)[tablename] performs full vacuum and collects statistics

### Postgres REINDEX Command

- Rebuilds corrupt indexes
- Shouldn't be needed, but there are bugs
- Cleans up unused pages in B-tree indexes
- REINDEX INDEX [indexname]
- REINDEX TABLE [tablename]
- REINDEX SCHEMA [schemaname]

# Hints to the query optimizer

### Suggest Optimizations

- Some databases accept hints
- Extra-SQL statements suggesting methods
- Pushing boundary between declarative and procedural code

### Postgres Uses Parameters

- SET command
- SET enable_hashjoin = off
- SET enable_nestloop = on
- When using SSDs, try setting random_page_cost and seq_page_cost to same value

### Some Caveats

- ANALYZE and VACUUM
- Try other optimization techniques first
- Verify query plan is consistently suboptimal
- Watch for changes in amount or distribution of data

# Parallel query execution

- Query optimizer may determine all or part of a query can run in parallel
- Executes parts of plan in parallel
- Then gathers results

### Parallel Query Details

- GATHER or GATHER MERGE appears in query plan
- All steps below GATHER / GATHER MERGE are executed in parallel
- Number of parallel processes limited by max_parallel_workers and max_worker_processes paramaters

### In Order to Have Parallel Query

- max_parallel_workers_per_gather parameter must be greater than 0
- dynamic_shared_memory_type parameter must not be "none"
- Database must not be running in single-user mode

### In order to have Parallel Query

- Query does not write data or lock rows
- Does not use a function marked PARALLEL UNSAFE (e.g., user defined functions)

### Parallel may be less Efficient

- Parallel plans must exceed parallel_setup_cost and parallel_tuple_cost parameters
- Parallel index scans only supported for B-tree indexes
- Inner side of mested loop and merge join is nonparallel
- Hash joins are parallel but each process creates a copy of the hash table

# Miscellaneous tips

### Indexing

- Create indexes on join columns, same for columns used in WHERE clauses
- Use covering indexes
- Dont filter on a column using equality to NULL(Ex: col1=NULL use IS NULL)
- Dont use functions in WHERE clauses unless you have a functional index

### Index Range Scan

- If a plan uses index ranger scan, keep the range as small as possible
- Use quality with conditions
- LIKE 'ABC%' can use and index; '%ABC' cannot
- Use indexes to avoid sorts with ORDER BY

### Filtering and Data Types

- When filtering on a range condition, especially dates, use continuous conditions, such as TRUNC(sysdate) and TRUNC(sysdate+1)
- Dont separate date and t,me into separete columns; use a date time datatype
