### Number of annual, monthly and overall adoptions.

```SQL
SELECT EXTRACT(YEAR FROM adoption_date) AS YEAR,
       EXTRACT(MONTH FROM adoption_date) AS MONTH,
       COUNT(*) AS monthly_adoptions
FROM adoptions
GROUP BY YEAR,MONTH
```

| year | month | monthly_adoptions |
| :--- | :---- | :---------------- |
| 2016 | 6     | 1                 |
| 2018 | 10    | 1                 |
| 2019 | 11    | 4                 |
| 2018 | 3     | 1                 |
| 2019 | 4     | 2                 |
| 2018 | 6     | 2                 |
| 2018 | 1     | 1                 |
| 2019 | 10    | 2                 |
| 2019 | 7     | 5                 |
| 2019 | 8     | 2                 |
| 2018 | 4     | 3                 |
| 2018 | 2     | 2                 |
| 2018 | 8     | 2                 |

<BR>

```sql
SELECT EXTRACT(YEAR FROM adoption_date) AS YEAR,
       COUNT(*) AS annual_adoptions
FROM adoptions
GROUP BY EXTRACT(YEAR FROM adoption_date)
```

| year | annual_adoptions |
| :--- | :--------------- |
| 2017 | 7                |
| 2018 | 25               |
| 2019 | 35               |
| 2016 | 3                |

<br>

```sql
SELECT COUNT(*) AS total_adoptions
FROM adoptions
```

| total_adoptions |
| :-------------- |
| 70              |

 <BR>

```SQL
WITH aggregated_adoptions
AS
(
  SELECT EXTRACT(YEAR FROM adoption_date) AS YEAR,
      EXTRACT(MONTH FROM adoption_date) AS MONTH,
      COUNT(*) AS monthly_adoptions
   FROM adoptions
   GROUP BY EXTRACT(YEAR FROM adoption_date), EXTRACT(MONTH FROM adoption_date)
)
SELECT *
FROM aggregated_adoptions
UNION ALL
SELECT YEAR,NULL,COUNT(*)
FROM aggregated_adoptions
GROUP BY YEAR
UNION ALL
SELECT NULL,NULL,COUNT(*)
FROM aggregated_adoptions
GROUP BY ();
```

| year | month | monthly_adoptions |
| :--- | :---- | :---------------- |
| 2016 | 6     | 1                 |
| 2018 | 10    | 1                 |
| 2019 | 11    | 4                 |
| 2018 | 3     | 1                 |
| 2019 | 4     | 2                 |
| 2018 | 6     | 2                 |
| 2018 | 1     | 1                 |
| 2019 | 10    | 2                 |
| 2019 | 7     | 5                 |
| 2019 | 8     | 2                 |
| 2018 | 4     | 3                 |
| 2018 | 2     | 2                 |
| 2018 | 8     | 2                 |
| 2019 | 9     | 4                 |
| 2016 | 9     | 1                 |
| 2018 | 12    | 3                 |
| 2017 | 12    | 1                 |
| 2017 | 11    | 1                 |

<BR>

# Grouping set

```sql
SELECT EXTRACT(YEAR FROM adoption_date) AS YEAR,
       EXTRACT(MONTH FROM adoption_date) AS MONTH,
       COUNT(*) AS monthly_adoptions
FROM adoptions
GROUP BY GROUPING SETS (EXTRACT(YEAR FROM adoption_date), EXTRACT(MONTH FROM adoption_date));
```

| year | month | monthly_adoptions |
| :--- | :---- | :---------------- |
| 2017 | NULL  | 7                 |
| 2018 | NULL  | 25                |
| 2019 | NULL  | 35                |
| 2016 | NULL  | 3                 |
| NULL | 3     | 4                 |
| NULL | 7     | 7                 |
| NULL | 2     | 3                 |
| NULL | 11    | 7                 |
| NULL | 12    | 12                |
| NULL | 1     | 4                 |
| NULL | 4     | 7                 |
| NULL | 9     | 11                |
| NULL | 6     | 4                 |

<br>

```sql
SELECT EXTRACT(YEAR FROM adoption_date) AS YEAR,
       COUNT(*) AS annual_adoptions
FROM adoptions
GROUP BY GROUPING SETS (EXTRACT(YEAR FROM adoption_date));
```

| year | annual_adoptions |
| :--- | :--------------- |
| 2017 | 7                |
| 2018 | 25               |
| 2019 | 35               |
| 2016 | 3                |

<br>

```sql
SELECT COUNT(*) AS total_adoptions
FROM adoptions
GROUP BY GROUPING SETS (());
```

| total_adoptions |
| :-------------- |
| 70              |

<br>

```sql
SELECT EXTRACT(YEAR FROM adoption_date) AS YEAR,
       EXTRACT(MONTH FROM adoption_date) AS MONTH,
       COUNT(*) AS monthly_adoptions
FROM adoptions
GROUP BY GROUPING SETS ((EXTRACT(YEAR FROM adoption_date), EXTRACT(MONTH FROM adoption_date)));
```

| year | month | monthly_adoptions |
| :--- | :---- | :---------------- |
| 2016 | 6     | 1                 |
| 2018 | 10    | 1                 |
| 2019 | 11    | 4                 |
| 2018 | 3     | 1                 |
| 2019 | 4     | 2                 |
| 2018 | 6     | 2                 |
| 2018 | 1     | 1                 |
| 2019 | 10    | 2                 |
| 2019 | 7     | 5                 |
| 2019 | 8     | 2                 |
| 2018 | 4     | 3                 |
| 2018 | 2     | 2                 |
| 2018 | 8     | 2                 |

<br>

```sql
SELECT EXTRACT(YEAR FROM adoption_date) AS YEAR,
       EXTRACT(MONTH FROM adoption_date) AS MONTH,
       COUNT(*) AS monthly_adoptions
    FROM adoptions
    GROUP BY GROUPING SETS ((EXTRACT(YEAR FROM adoption_date), EXTRACT(MONTH FROM adoption_date)),
                            EXTRACT(YEAR FROM adoption_date),
                            ()
                            )
ORDER BY YEAR,MONTH;
```

| year | month | monthly_adoptions |
| :--- | :---- | :---------------- |
| 2016 | 4     | 1                 |
| 2016 | 6     | 1                 |
| 2016 | 9     | 1                 |
| 2016 | NULL  | 3                 |
| 2017 | 3     | 1                 |
| 2017 | 4     | 1                 |
| 2017 | 9     | 3                 |
| 2017 | 11    | 1                 |
| 2017 | 12    | 1                 |
| 2017 | NULL  | 7                 |
| 2018 | 1     | 1                 |
| 2018 | 2     | 2                 |
| 2018 | 3     | 1                 |

<br>

```SQL
SELECT COALESCE(species, 'ALL') AS species,
       COALESCE(breed, 'ALL') AS breed,
       GROUPING(breed) AS is_this_all_breeds,
       count(*) AS number_of_animals
FROM animals
GROUP BY GROUPING SETS (
                        species,
                        breed,
                        ()
                        )
ORDER BY species, breed
```

| species | breed            | is_this_all_breeds | number_of_animals |
| :------ | :--------------- | :----------------- | :---------------- |
| ALL     | ALL              | 0                  | 68                |
| ALL     | ALL              | 1                  | 100               |
| ALL     | American Bobtail | 0                  | 1                 |
| ALL     | Belgian Hare     | 0                  | 1                 |
| ALL     | Bullmastiff      | 0                  | 4                 |
| ALL     | English Lop      | 0                  | 1                 |
| ALL     | English setter   | 0                  | 6                 |
| ALL     | Lionhead         | 0                  | 1                 |
| ALL     | Maine Coon       | 0                  | 1                 |
| ALL     | Persian          | 0                  | 1                 |
| ALL     | Russian Blue     | 0                  | 1                 |
| ALL     | Schnauzer        | 0                  | 4                 |
| ALL     | Scottish Fold    | 0                  | 1                 |

<BR>

```SQL
SELECT COALESCE(species, 'ALL') AS species,
        CASE
            WHEN GROUPING(breed) = 1
            THEN 'ALL'
            ELSE breed
        END AS breed,
       GROUPING(breed) AS is_this_all_breeds,
       count(*) AS number_of_animals
FROM animals
GROUP BY GROUPING SETS (
                        species,
                        breed,
                        ()
                        )
ORDER BY species, breed
```

| species | breed            | is_this_all_breeds | number_of_animals |
| :------ | :--------------- | :----------------- | :---------------- |
| ALL     | ALL              | 1                  | 100               |
| ALL     | American Bobtail | 0                  | 1                 |
| ALL     | Belgian Hare     | 0                  | 1                 |
| ALL     | Bullmastiff      | 0                  | 4                 |
| ALL     | English Lop      | 0                  | 1                 |
| ALL     | English setter   | 0                  | 6                 |
| ALL     | Lionhead         | 0                  | 1                 |
| ALL     | Maine Coon       | 0                  | 1                 |
| ALL     | Persian          | 0                  | 1                 |
| ALL     | Russian Blue     | 0                  | 1                 |
| ALL     | Schnauzer        | 0                  | 4                 |
| ALL     | Scottish Fold    | 0                  | 1                 |
| ALL     | Siamese          | 0                  | 1                 |
