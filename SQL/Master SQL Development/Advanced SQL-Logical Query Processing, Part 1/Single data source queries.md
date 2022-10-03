```sql
SELECT * FROM staff;
```

| email                            | hire_date  |
| :------------------------------- | :--------- |
| ashley.flores@animalshelter.com  | 2016-01-01 |
| dennis.hill@animalshelter.com    | 2018-10-07 |
| frances.hill@animalshelter.com   | 2016-01-01 |
| gerald.reyes@animalshelter.com   | 2018-03-20 |
| patrick.hughes@animalshelter.com | 2018-12-15 |
| robin.murphy@animalshelter.com   | 2018-08-15 |
| sharon.davis@animalshelter.com   | 2016-01-01 |
| wanda.myers@animalshelter.com    | 2016-01-01 |
| wayne.carter@animalshelter.com   | 2018-04-02 |

<br>

```sql
SELECT 'SQL IS FUN' AS Fact FROM staff;
```

| fact       |
| :--------- |
| SQL IS FUN |
| SQL IS FUN |
| SQL IS FUN |
| SQL IS FUN |
| SQL IS FUN |
| SQL IS FUN |
| SQL IS FUN |
| SQL IS FUN |
| SQL IS FUN |

<br>

```sql
SELECT *, 'SQL IS FUN' AS Fact FROM staff;
```

| email                            | hire_date  | fact       |
| :------------------------------- | :--------- | :--------- |
| ashley.flores@animalshelter.com  | 2016-01-01 | SQL IS FUN |
| dennis.hill@animalshelter.com    | 2018-10-07 | SQL IS FUN |
| frances.hill@animalshelter.com   | 2016-01-01 | SQL IS FUN |
| gerald.reyes@animalshelter.com   | 2018-03-20 | SQL IS FUN |
| patrick.hughes@animalshelter.com | 2018-12-15 | SQL IS FUN |
| robin.murphy@animalshelter.com   | 2018-08-15 | SQL IS FUN |
| sharon.davis@animalshelter.com   | 2016-01-01 | SQL IS FUN |
| wanda.myers@animalshelter.com    | 2016-01-01 | SQL IS FUN |
| wayne.carter@animalshelter.com   | 2018-04-02 | SQL IS FUN |

<br>
