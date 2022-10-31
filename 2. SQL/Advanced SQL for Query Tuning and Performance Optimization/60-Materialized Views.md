- Materalized views
- Creating materialized views
- Refreshing materialized views

# Materalized views

- Precomputed queries
- Join and store results
- Apply other operations

1. Duplicate Data

- Trading space for time

2. Updates

- Updates to sources require updates to materalized views

3. Potential Inconsistency

- REFRESH MATERIALIZED VIEW command

### Materalized View Example

```sql
CREATE MATERIALIZED VIEW mv_staff AS
    SELECT
        s.last_name, s.department, s.job_title,
        cr.company_regions
    FROM
        staff s
    INNER JOIN
        company_regions cr
    ON s.region_id = cr.region_id
```

### When to use Materialized Views

- Time more important than storage space
- Can tolerate some inconsistencies
- Or can refresh after each update to sources

# Creating materialized views

```sql
CREATE MATERIALIZED VIEW mv_staff AS
    SELECT
        s.last_name, s.department, s.job_title,
        cr.company_regions
    FROM
        staff s
    INNER JOIN
        company_regions cr
    ON s.region_id = cr.region_id
```

# Refreshing materialized views

```SQL
SELECT * FROM mv_staff;
```

```SQL
REFRESH MATERIALIZED VIEW mv_staff;
```
