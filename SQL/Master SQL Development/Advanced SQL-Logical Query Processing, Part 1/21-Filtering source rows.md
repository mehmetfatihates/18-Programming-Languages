### Outputs are just first 25 rows

```sql
SELECT * FROM
INNER JOIN A.X = B.X AND A.X > 1;

SELECT * FROM A
    INNER JOIN A.X = B.X
    WHERE A.X > 1
```

```sql
SELECT * FROM A
    LEFT JOIN A.X = B.X AND A.X > 1;

SELECT * FROM A
    LEFT JOIN A.X = B.X
    WHERE A.X > 1;
```
