- What affect performance ?
- Nested loops
- Nested loop example plan
- Hash joins
- Hash join example plan
- Merge joins
- Merge join example
- Subqueries vs.joins

# What affect performance ?

### Joins

- INNER JOIN
- LEFT OUTER JOIN
- RIGHT OUTER JOIN
- FULL OUTER JOIN

1. Prefer INNER JOINs
   - Often fastest
2. OUTER and FULL JOINs
   - Require additional steps in addition to INNER JOIN
3. When need to NULLs
   - LEFT, RIGHT and FULL OUTER JOINS used when need to NULLs

### INNER JOIN

- Most common join
- Return rows from both tables that have corresponding row in pther table
- Performed when joining in WHERE clause

```sql
SELECT * FROM company_regions cr
INNER JOIN staff s
ON cr.region_id = s.region_id
```

### LEFT OUTER JOIN

- Returns all rows from left table
- Returns rows from right table that have matching key

```sql
SELECT * FROM company_regions cr
LEFT OUTER JOIN staff s
ON cr.region_id = s.region_id
```

### RIGHT OUTER JOIN

- Returns all rows from right table
- Returns rows from left table that have matching key

```sql
SELECT * FROM company_regions cr
RIGHT OUTER JOIN staff s
ON cr.region_id = s.region_id
```

### FULL OUTER JOIN

- Returns all rows from both tables

```sql
SELECT * FROM company_regions cr
FULL OUTER JOIN staff s
ON cr.region_id = s.region_id
```

# Nested loops

- Two loops
- Outer loop iterates over one table, the driver table
- Inner loop iterates over other table, the join table
- Outer loop runs once
- Inner loop runs once for each row in join table

### When to use Nested Loops

- Works with all join conditions
- Low overhead
- Works well with small tables
- Works weel with small driver tables and joined column is indexed

### Limitations of Nested Loops

- Can be slow
- If tables do not fit in memory even slower performance
- Indexes can improve the performance of nested loop joins, especially covered indexes

# Nested loop example plan

```sql
SELECT s.id, s.last_name,s.job_title,cr.country
FROM staff s
INNER JOIN
company_regions cr
on
s.region_id = cr.region_id
```

| id  | last_name  | job_title                  | country |
| :-- | :--------- | :------------------------- | :------ |
| 1   | Kelley     | Structural Engineer        | USA     |
| 2   | Armstrong  | Financial Advisor          | USA     |
| 3   | Carr       | Recruiting Manager         | USA     |
| 4   | Murray     | Desktop Support Technician | USA     |
| 5   | Ellis      | Software Engineer III      | Canada  |
| 6   | Phillips   | Executive Secretary        | USA     |
| 7   | Williamson | Dental Hygienist           | Canada  |
| 8   | Harris     | Safety Technician I        | USA     |
| 9   | James      | Sales Associate            | USA     |
| 10  | Sanchez    | Sales Representative       | USA     |

```sql
EXPLAIN SELECT s.id, s.last_name,s.job_title,cr.country
FROM staff s
INNER JOIN
company_regions cr
on
s.region_id = cr.region_id
```

| QUERY PLAN                                                                  |
| :-------------------------------------------------------------------------- |
| Hash Join \(cost=22.38..49.02 rows=1000 width=88\)                          |
| Hash Cond: \(s.region_id = cr.region_id\)                                   |
| -&gt; Seq Scan on staff s \(cost=0.00..24.00 rows=1000 width=34\)           |
| -&gt; Hash \(cost=15.50..15.50 rows=550 width=62\)                          |
| -&gt; Seq Scan on company_regions cr \(cost=0.00..15.50 rows=550 width=62\) |

```SQL
SET ENABLE_NESTLOOP = TRUE;
SET ENABLE_HASHJOIN = FALSE;
SET ENABLE_MERGEJOIN = FALSE;

EXPLAIN SELECT s.id, s.last_name,s.job_title,cr.country
FROM staff s
INNER JOIN
company_regions cr
on
s.region_id = cr.region_id
```

| QUERY PLAN                                                                                            |
| :---------------------------------------------------------------------------------------------------- |
| Nested Loop \(cost=0.16..50.69 rows=1000 width=88\)                                                   |
| -&gt; Seq Scan on staff s \(cost=0.00..24.00 rows=1000 width=34\)                                     |
| -&gt; Memoize \(cost=0.16..0.23 rows=1 width=62\)                                                     |
| Cache Key: s.region_id                                                                                |
| Cache Mode: logical                                                                                   |
| -&gt; Index Scan using company_regions_pkey on company_regions cr \(cost=0.15..0.22 rows=1 width=62\) |
| Index Cond: \(region_id = s.region_id\)                                                               |

# Hash joins

### Hash Functions

- Function for mapping arbitrary length data to a value that can act as an index into an array
- Hash values virtually unique
- Even slight changes in input produce new hash

### Build Hash Table

- Use the smaller of the two tables
- Compute has value of primary key value
- Store in table

### Probe Hash Table

- Step through large table
- Compute has value of primary or foreign key value
- Lookup corresponding value in hash table

1. Equality Only

- Hash joins used when '=' is used, but not other operators

2. Time Based on Table Size

- Rows in smaller table for build rows in larger table for probe table

3. Fast Lookup

- Hash value is index into array of row identifiers

# Hash join example plan

```SQL
SET ENABLE_NESTLOOP = FALSE;
SET ENABLE_HASHJOIN = TRUE;
SET ENABLE_MERGEJOIN = FALSE;

EXPLAIN SELECT s.id, s.last_name,s.job_title,cr.country
FROM staff s
INNER JOIN
company_regions cr
on
s.region_id = cr.region_id
```

| QUERY PLAN                                                                  |
| :-------------------------------------------------------------------------- |
| Hash Join \(cost=22.38..49.02 rows=1000 width=88\)                          |
| Hash Cond: \(s.region_id = cr.region_id\)                                   |
| -&gt; Seq Scan on staff s \(cost=0.00..24.00 rows=1000 width=34\)           |
| -&gt; Hash \(cost=15.50..15.50 rows=550 width=62\)                          |
| -&gt; Seq Scan on company_regions cr \(cost=0.00..15.50 rows=550 width=62\) |

# Merge joins

### Sorting

- Merge join also known as sort merge
- First step is sorting tables
- Takes advantage of ordering to reduce the number of rows checked

### Merging

1. Equality Only

- Merge joins used when "=" is used but not other operators

2. Time Based on Table Size

- Time to sort and time to scan

3. Large table joins

- Works well when tables do not fit in memory

# Merge join example

```SQL
SET ENABLE_NESTLOOP = FALSE;
SET ENABLE_HASHJOIN = FALSE;
SET ENABLE_MERGEJOIN = TRUE;

EXPLAIN SELECT s.id, s.last_name,s.job_title,cr.country
FROM staff s
INNER JOIN
company_regions cr
on
s.region_id = cr.region_id
```

| QUERY PLAN                                                                  |
| :-------------------------------------------------------------------------- |
| Merge Join \(cost=114.36..132.11 rows=1000 width=88\)                       |
| Merge Cond: \(s.region_id = cr.region_id\)                                  |
| -&gt; Sort \(cost=73.83..76.33 rows=1000 width=34\)                         |
| Sort Key: s.region_id                                                       |
| -&gt; Seq Scan on staff s \(cost=0.00..24.00 rows=1000 width=34\)           |
| -&gt; Sort \(cost=40.53..41.91 rows=550 width=62\)                          |
| Sort Key: cr.region_id                                                      |
| -&gt; Seq Scan on company_regions cr \(cost=0.00..15.50 rows=550 width=62\) |

# Subqueries vs. joins

### Subqueries

- Returns a value from a related table

```sql
SELECT
s.id,s.last_name,s.department,
(
    SELECT
        company_regions
    FROM
        company_regions cr
    WHERE
        cr.region_id = s.region_id
) region_name
FROM
staff s
```

### Join vs. Subqueries

- Same logical outcome
- SQL queries specify "what"
- More than one way to express the same thing

```sql
SELECT
s.id,s.last_name,s.department, cr.company_region region_name
FROM
    company_region cr
INNER JOIN
    staff s
ON
    cr.region_id = s.region_id
```

### Which to use

1. Conventional Wisdom

- Always use joins they are more efficient

2. Improved Query Plans

- Query plan builders are more effective at optimizing subqueries

3. Maximize Clarity

- Both will work well in many cases. Opt for what makes intention clear
