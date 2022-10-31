```sql
SELECT CAST(DAY AS DATE) AS DAY
FROM generate_series( '2019-01-01'::DATE,
                      '2019-12-31',
                      '1 day'
                    ) AS days_of_2019(day)
ORDER BY day ASC
```

| day        |
| :--------- |
| 2019-01-01 |
| 2019-01-02 |
| 2019-01-03 |
| 2019-01-04 |
| 2019-01-05 |
| 2019-01-06 |
| 2019-01-07 |
| 2019-01-08 |
| 2019-01-09 |
| 2019-01-10 |
| 2019-01-11 |
| 2019-01-12 |
| 2019-01-13 |
| 2019-01-14 |
| 2019-01-15 |

<BR>

```SQL
WITH RECURSIVE days_of_2019 (day) AS
(   SELECT CAST('20190101' AS date)
    UNION ALL
    SELECT CAST(day+INTERVAL '1 DAY' AS date)
    FROM days_of_2019
    WHERE day < CAST('20191231'AS date))
SELECT *
FROM days_of_2019
ORDER BY day ASC
```

| day        |
| :--------- |
| 2019-01-01 |
| 2019-01-02 |
| 2019-01-03 |
| 2019-01-04 |
| 2019-01-05 |
| 2019-01-06 |
| 2019-01-07 |
| 2019-01-08 |
| 2019-01-09 |
| 2019-01-10 |
| 2019-01-11 |
| 2019-01-12 |
| 2019-01-13 |
| 2019-01-14 |
| 2019-01-15 |
