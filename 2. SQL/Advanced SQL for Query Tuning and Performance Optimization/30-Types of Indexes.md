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

# B-tree index example plan

```sql
SELECT * FROM staff WHERE email = 'fcarr2@woothemes.com'
```

| id  | last_name | email                | gender | department | start_date | salary | job_title          | region_id |
| :-- | :-------- | :------------------- | :----- | :--------- | :--------- | :----- | :----------------- | :-------- |
| 3   | Carr      | fcarr2@woothemes.com | Male   | Automotive | 2009-07-12 | 101768 | Recruiting Manager | 3         |

```SQL
EXPLAIN SELECT * FROM staff WHERE email = 'fcarr2@woothemes.com'
```

| QUERY PLAN                                                 |
| :--------------------------------------------------------- |
| Seq Scan on staff \(cost=0.00..26.50 rows=1 width=75\)     |
| Filter: \(\(email\)::text = 'fcarr2@woothemes.com'::text\) |

```SQL
CREATE INDEX idx_staff_email ON staff(email)
```

```sql
EXPLAIN SELECT * FROM staff WHERE email = 'fcarr2@woothemes.com'
```

| QUERY PLAN                                                                    |
| :---------------------------------------------------------------------------- |
| Index Scan using idx_staff_email on staff \(cost=0.28..8.29 rows=1 width=75\) |
| Index Cond: \(\(email\)::text = 'fcarr2@woothemes.com'::text\)                |

# Bitmap Index

### Bitmap Operations

- (is_union_member = 'YES') AND (pay_type = 'Hourly')

### Bitmap Uses

- Used when small number of possible values in column(low cardinality)
- Filter by bitwise operations, such as AND, OR and NOT
- Time to access is based on timae to perform bitwise operations
- Read-intensive use cases, few writes

### Bitmap Index Availability

- Some databases allow you to create bitmap indexes explicity
- PostgreSQL does not
- But PostgreSQL builds bitmap indexes on the fly as needed

# Bitmap index example plan

```SQL
SELECT DISTINCT job_title FROM staff ORDER BY job_title
```

| job_title                  |
| :------------------------- |
| Account Coordinator        |
| Account Executive          |
| Account Representative I   |
| Account Representative II  |
| Account Representative III |
| Account Representative IV  |
| Accountant I               |
| Accountant II              |
| Accountant III             |
| Accountant IV              |
| Accounting Assistant I     |
| Accounting Assistant II    |

```SQL
SELECT * FROM staff WHERE job_title='Operator'
```

| id  | last_name | email                          | gender | department | start_date | salary | job_title | region_id |
| :-- | :-------- | :----------------------------- | :----- | :--------- | :--------- | :----- | :-------- | :-------- |
| 71  | Vasquez   | evasquez1y@behance.net         | Male   | Baby       | 2002-10-20 | 77285  | Operator  | 6         |
| 113 | Moore     | kmoore34@shareasale.com        | Male   | Baby       | 2000-03-01 | 54413  | Operator  | 5         |
| 151 | Larson    | blarson46@newsvine.com         | Male   | Books      | 2011-08-09 | 50066  | Operator  | 1         |
| 242 | Robinson  | probinson6p@ucla.edu           | Male   | Health     | 2003-11-30 | 137594 | Operator  | 6         |
| 257 | Freeman   | gfreeman74@bloomberg.com       | Female | Home       | 2012-06-05 | 83804  | Operator  | 1         |
| 371 | Sims      | bsimsaa@privacy.gov.au         | Male   | Sports     | 2000-06-04 | 127223 | Operator  | 5         |
| 673 | Thomas    | lthomasio@pagesperso-orange.fr | Male   | Health     | 2014-10-27 | 51782  | Operator  | 6         |
| 719 | Wagner    | ewagnerjy@jalbum.net           | Male   | Beauty     | 2013-01-04 | 135445 | Operator  | 2         |
| 807 | Gibson    | hgibsonme@ox.ac.uk             | Male   | Industrial | 2005-12-15 | 148816 | Operator  | 4         |
| 847 | Knight    | dknightni@unc.edu              | Female | Clothing   | 2008-03-22 | 91532  | Operator  | 4         |
| 928 | Young     | lyoungpr@psu.edu               | Female | Kids       | 2009-12-21 | 62799  | Operator  | 1         |

```sql
CREATE INDEX idx_staff_job_title ON staff(job_title)
```

```SQL
EXPLAIN SELECT * FROM staff WHERE job_title='Operator'
```

| QUERY PLAN                                                                         |
| :--------------------------------------------------------------------------------- |
| Bitmap Heap Scan on staff \(cost=4.36..18.36 rows=11 width=75\)                    |
| Recheck Cond: \(\(job_title\)::text = 'Operator'::text\)                           |
| -&gt; Bitmap Index Scan on idx_staff_job_title \(cost=0.00..4.36 rows=11 width=0\) |
| Index Cond: \(\(job_title\)::text = 'Operator'::text\)                             |

# Hash Indexes

- Hash Function
  - Function for mapping arbitrary length data to a fixed-size string
  - Hash values virtually unique
  - Even slight changes in input produces new hash
- Hash Values
  - Size of value depends on algorithm used
  - No ordering preserving with hash functions
  - Similar inputs have vasty different outputs

1. Equality Only
   - Hash indexes used when "=" is used, but not for ranges of values
2. Smaller Size Than B-Tree
   - Latest versions of PostgreSQL (10+) have improved hash indexes.
3. As Fast as B-Tree
   - Builds and lookups are comparable advantage is size; may fit in memory

# Hash index example plan

```sql
CREATE INDEX idx_hash_staff_email ON staff USING HASH (email)
```

```sql
SELECT * FROM staff
WHERE email = 'fcarr2@woothemes.com'
```

| id  | last_name | email                | gender | department | start_date | salary | job_title          | region_id |
| :-- | :-------- | :------------------- | :----- | :--------- | :--------- | :----- | :----------------- | :-------- |
| 3   | Carr      | fcarr2@woothemes.com | Male   | Automotive | 2009-07-12 | 101768 | Recruiting Manager | 3         |

```sql
EXPLAIN SELECT * FROM staff
WHERE email = 'fcarr2@woothemes.com'
```

| QUERY PLAN                                                                         |
| :--------------------------------------------------------------------------------- |
| Index Scan using idx_hash_staff_email on staff \(cost=0.00..8.02 rows=1 width=75\) |
| Index Cond: \(\(email\)::text = 'fcarr2@woothemes.com'::text\)                     |

# PostgreSQL-Specific Indexes

### Specialized Indexes

- Used in PostgreSQL, but may not have equivalents in other relational databases
  - GIST
  - SP-GIST
  - GIN
  - BRIN

### GIST

- Generalized Search Tree
- Not a single type of index
- Framework for implementing custom indexes

### SP-GIST

- Space-partitioned GIST
- Supports partitioned search trees
- Used for nonbalanced data structures
- Partitions do not have to be same size

### GIN

- Used for text indexing
- Lookups are faster then GIST
- Builds are slower then GIST
- Indexes are 2-3 times larger than GIST

### BRIN

- Block range indexing
- Used for large data sets
- Divides data into ordered blocks
- Keeps min and max values
- Search only blocks that may have match
