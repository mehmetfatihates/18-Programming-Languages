![Subquery Processing](subquery-processing.png)

### Non-Correlated Subquery

```sql
SELECT foo,
    (
        SELECT AVG(foot)
        FROM bart
    )   AS bar
FROM foo_bar;
```

### Correlated Subquery

```sql
SELECT foo,
    (
        SELECT AVG(foo)
        FROM bart
        WHERE bart.foot = foo_bar.foo
    )   AS bar
FROM foo_bar
```

```SQL
SELECT MAX(adoption_fee)
FROM adoptions;
```

| max |
| :-- |
| 100 |

<br>

```SQL

```

| name   | species | adopter_email                    | adoption_date | adoption_fee | max |
| :----- | :------ | :------------------------------- | :------------ | :----------- | :-- |
| Abby   | Dog     | patrick.hughes@animalshelter.com | 2018-08-30    | 58           | 100 |
| Ace    | Dog     | justin.ruiz@hotmail.com          | 2019-10-26    | 68           | 100 |
| Archie | Cat     | patrick.hughes@animalshelter.com | 2018-08-30    | 82           | 100 |
| Bailey | Dog     | wayne.turner@icloud.com          | 2019-07-26    | 50           | 100 |
| Baloo  | Rabbit  | jesse.cox@yahoo.com              | 2017-12-16    | 58           | 100 |
| Beau   | Dog     | shirley.williams@outlook.com     | 2018-04-15    | 90           | 100 |
| Benji  | Dog     | sharon.davis@animalshelter.com   | 2018-11-18    | 97           | 100 |
| Brody  | Dog     | george.scott@hotmail.com         | 2019-02-21    | 83           | 100 |
| Brutus | Dog     | virginia.baker@gmail.com         | 2019-01-28    | 66           | 100 |
| Buddy  | Cat     | karen.smith@icloud.com           | 2019-09-27    | 73           | 100 |
| Callie | Dog     | peter.smith@hotmail.com          | 2018-09-06    | 57           | 100 |
| Chico  | Dog     | lori.smith@icloud.com            | 2019-12-29    | 86           | 100 |
| Chubby | Rabbit  | adam.brown@gmail.com             | 2018-05-27    | 65           | 100 |
| Cleo   | Cat     | melissa.lopez@gmail.com          | 2019-12-15    | 56           | 100 |
| Cooper | Dog     | lisa.perez@icloud.com            | 2018-01-10    | 61           | 100 |
| Cosmo  | Cat     | diane.thompson@hotmail.com       | 2019-06-16    | 100          | 100 |
| Dolly  | Dog     | laura.young@gmail.com            | 2019-12-30    | 93           | 100 |
| Emma   | Dog     | melissa.moore@icloud.com         | 2019-12-28    | 76           | 100 |

<br>

### Discount%=((Y-X)\*100/Y)

```sql
SELECT *,(SELECT MAX(adoption_fee) FROM adoptions),
       (((SELECT MAX(adoption_fee) FROM adoptions)-adoption_fee)*100)/(SELECT MAX(adoption_fee) FROM adoptions) AS discount_percent
FROM adoptions
```

| name   | species | adopter_email                    | adoption_date | adoption_fee |
| :----- | :------ | :------------------------------- | :------------ | :----------- |
| Abby   | Dog     | patrick.hughes@animalshelter.com | 2018-08-30    | 58           |
| Ace    | Dog     | justin.ruiz@hotmail.com          | 2019-10-26    | 68           |
| Archie | Cat     | patrick.hughes@animalshelter.com | 2018-08-30    | 82           |
| Bailey | Dog     | wayne.turner@icloud.com          | 2019-07-26    | 50           |
| Baloo  | Rabbit  | jesse.cox@yahoo.com              | 2017-12-16    | 58           |
| Beau   | Dog     | shirley.williams@outlook.com     | 2018-04-15    | 90           |
| Benji  | Dog     | sharon.davis@animalshelter.com   | 2018-11-18    | 97           |
| Brody  | Dog     | george.scott@hotmail.com         | 2019-02-21    | 83           |
| Brutus | Dog     | virginia.baker@gmail.com         | 2019-01-28    | 66           |
| Buddy  | Cat     | karen.smith@icloud.com           | 2019-09-27    | 73           |
| Callie | Dog     | peter.smith@hotmail.com          | 2018-09-06    | 57           |
| Chico  | Dog     | lori.smith@icloud.com            | 2019-12-29    | 86           |
| Chubby | Rabbit  | adam.brown@gmail.com             | 2018-05-27    | 65           |
| Cleo   | Cat     | melissa.lopez@gmail.com          | 2019-12-15    | 56           |
| Cooper | Dog     | lisa.perez@icloud.com            | 2018-01-10    | 61           |
| Cosmo  | Cat     | diane.thompson@hotmail.com       | 2019-06-16    | 100          |
| Dolly  | Dog     | laura.young@gmail.com            | 2019-12-30    | 93           |
| Emma   | Dog     | melissa.moore@icloud.com         | 2019-12-28    | 76           |

<br>

### MAX fee per species instead of overall

```sql
SELECT *,
       (SELECT MAX(adoption_fee)
        FROM adoptions AS A2
        WHERE A2.species=A1.species
        ) AS max_fee
FROM adoptions AS A1;
```

| name   | species | adopter_email                    | adoption_date | adoption_fee | max_fee |
| :----- | :------ | :------------------------------- | :------------ | :----------- | :------ |
| Abby   | Dog     | patrick.hughes@animalshelter.com | 2018-08-30    | 58           | 99      |
| Ace    | Dog     | justin.ruiz@hotmail.com          | 2019-10-26    | 68           | 99      |
| Archie | Cat     | patrick.hughes@animalshelter.com | 2018-08-30    | 82           | 100     |
| Bailey | Dog     | wayne.turner@icloud.com          | 2019-07-26    | 50           | 99      |
| Baloo  | Rabbit  | jesse.cox@yahoo.com              | 2017-12-16    | 58           | 96      |
| Beau   | Dog     | shirley.williams@outlook.com     | 2018-04-15    | 90           | 99      |
| Benji  | Dog     | sharon.davis@animalshelter.com   | 2018-11-18    | 97           | 99      |
| Brody  | Dog     | george.scott@hotmail.com         | 2019-02-21    | 83           | 99      |
| Brutus | Dog     | virginia.baker@gmail.com         | 2019-01-28    | 66           | 99      |
| Buddy  | Cat     | karen.smith@icloud.com           | 2019-09-27    | 73           | 100     |
| Callie | Dog     | peter.smith@hotmail.com          | 2018-09-06    | 57           | 99      |
| Chico  | Dog     | lori.smith@icloud.com            | 2019-12-29    | 86           | 99      |
| Chubby | Rabbit  | adam.brown@gmail.com             | 2018-05-27    | 65           | 96      |
| Cleo   | Cat     | melissa.lopez@gmail.com          | 2019-12-15    | 56           | 100     |
| Cooper | Dog     | lisa.perez@icloud.com            | 2018-01-10    | 61           | 99      |
| Cosmo  | Cat     | diane.thompson@hotmail.com       | 2019-06-16    | 100          | 100     |
| Dolly  | Dog     | laura.young@gmail.com            | 2019-12-30    | 93           | 99      |
| Emma   | Dog     | melissa.moore@icloud.com         | 2019-12-28    | 76           | 99      |

<br>

### Show people who adopted at least one animal

```sql
SELECT COUNT(*)
FROM persons
```

| count |
| :---- |
| 120   |

<BR>

```SQL
SELECT DISTINCT  P.*
FROM persons AS P
    INNER JOIN
    adoptions AS A
    ON A.adopter_email = P.email;
```

| email                          | first_name | last_name | birth_date | address     | state      | city                    | zip_code |
| :----------------------------- | :--------- | :-------- | :--------- | :---------- | :--------- | :---------------------- | :------- |
| jesse.cox@yahoo.com            | Jesse      | Cox       | 1990-07-26 | 544 North   | California | South Gate              | 90280    |
| roger.adams@hotmail.com        | Roger      | Adams     | 1947-05-09 | 639 West    | California | Los Angeles             | 90031    |
| adam.brown@gmail.com           | Adam       | Brown     | 1984-12-22 | 41 Hill     | California | Norwalk                 | 90650    |
| jacqueline.phillips@gmail.com  | Jacqueline | Phillips  | NULL       | 519 Johnson | California | Long Beach              | 90853    |
| karen.smith@icloud.com         | Karen      | Smith     | 1948-03-01 | 110 North   | California | West Rancho Dominguez   | 90220    |
| kathy.thomas@gmail.com         | Kathy      | Thomas    | 1952-04-08 | 427 Main    | California | Lakewood                | 90712    |
| sara.nelson@icloud.com         | Sara       | Nelson    | 1990-10-15 | 340 Fifth   | California | View Park-Windsor Hills | 90043    |
| julie.adams@gmail.com          | Julie      | Adams     | 1957-01-31 | 133 Hill    | California | Gardena                 | 90247    |
| melissa.moore@icloud.com       | Melissa    | Moore     | 1960-06-27 | 156 Park    | California | Bell Gardens            | 90202    |
| ryan.garcia@hotmail.com        | Ryan       | Garcia    | 1975-03-09 | 787 Wilson  | California | Downey                  | 90239    |
| charles.phillips@gmail.com     | Charles    | Phillips  | 1980-05-11 | 812 Hill    | California | Long Beach              | 90813    |
| ryan.wright@hotmail.com        | Ryan       | Wright    | NULL       | 600 Wilson  | California | Downey                  | 90239    |
| laura.young@gmail.com          | Laura      | Young     | 1987-05-19 | 29 First    | California | Torrance                | 90503    |
| kevin.diaz@hotmail.com         | Kevin      | Diaz      | 1974-01-18 | 262 Jackson | California | Torrance                | 90509    |
| gerald.reyes@animalshelter.com | Gerald     | Reyes     | 1956-02-10 | 761 Eighth  | California | Long Beach              | 90853    |
| emily.perez@gmail.com          | Emily      | Perez     | 1971-08-25 | 759 Dogwood | California | Lynwood                 | 90262    |
| bruce.cook@icloud.com          | Bruce      | Cook      | 1953-01-12 | 667 Church  | California | South Whittier          | 90605    |
| jerry.mitchell@icloud.com      | Jerry      | Mitchell  | 1981-09-22 | 732 Johnson | California | South Whittier          | 90605    |

<BR>

### ! This query wrong because of second email. There is no email column on adoptions table

```SQL
SELECT *
FROM persons
WHERE email IN (SELECT email FROM adoptions)
```

### We have to adding adopter_email

```SQL
SELECT *
FROM persons
WHERE email IN (SELECT adopter_email FROM adoptions)
```

# EXIST

```sql
SELECT *
FROM foo
WHERE EXISTS (SELECT *
              FROM bart
              WHERE bart.foo = foo.bar
              );
```

```sql
SELECT *
FROM persons AS P
WHERE EXISTS(
            SELECT NULL
            FROM adoptions AS A
            WHERE A.adopter_email = P.email
            );
```

| email                          | first_name | last_name | birth_date | address     | state      | city           | zip_code |
| :----------------------------- | :--------- | :-------- | :--------- | :---------- | :--------- | :------------- | :------- |
| adam.brown@gmail.com           | Adam       | Brown     | 1984-12-22 | 41 Hill     | California | Norwalk        | 90650    |
| anna.thompson@hotmail.com      | Anna       | Thompson  | 1997-05-11 | 716 Meadow  | California | Los Angeles    | 90032    |
| bruce.cook@icloud.com          | Bruce      | Cook      | 1953-01-12 | 667 Church  | California | South Whittier | 90605    |
| bruce.harris@hotmail.com       | Bruce      | Harris    | 1957-11-26 | 370 Church  | California | South Whittier | 90605    |
| charles.phillips@gmail.com     | Charles    | Phillips  | 1980-05-11 | 812 Hill    | California | Long Beach     | 90813    |
| diane.thompson@hotmail.com     | Diane      | Thompson  | 1998-06-25 | 762 Church  | California | Willowbrook    | 90059    |
| doris.young@icloud.com         | Doris      | Young     | 1954-02-15 | 511 Ridge   | California | Torrance       | 90501    |
| emily.perez@gmail.com          | Emily      | Perez     | 1971-08-25 | 759 Dogwood | California | Lynwood        | 90262    |
| frances.cook@yahoo.com         | Frances    | Cook      | 1973-08-13 | 351 Forest  | California | Compton        | 90220    |
| frances.hill@animalshelter.com | Frances    | Hill      | 1953-01-29 | 406 Forest  | California | Compton        | 90220    |
| george.scott@hotmail.com       | George     | Scott     | 1982-05-03 | 424 Cedar   | California | Los Angeles    | 90004    |
| gerald.reyes@animalshelter.com | Gerald     | Reyes     | 1956-02-10 | 761 Eighth  | California | Long Beach     | 90853    |
| jacqueline.phillips@gmail.com  | Jacqueline | Phillips  | NULL       | 519 Johnson | California | Long Beach     | 90853    |
| james.ramos@hotmail.com        | James      | Ramos     | 1962-08-07 | 968 Cherry  | California | Carson         | 90745    |
| jerry.mitchell@icloud.com      | Jerry      | Mitchell  | 1981-09-22 | 732 Johnson | California | South Whittier | 90605    |
| jesse.cox@yahoo.com            | Jesse      | Cox       | 1990-07-26 | 544 North   | California | South Gate     | 90280    |
| jonathan.mez@hotmail.com       | Jonathan   | mez       | 1989-07-09 | 319 Johnson | California | Los Angeles    | 90069    |
| julie.adams@gmail.com          | Julie      | Adams     | 1957-01-31 | 133 Hill    | California | Gardena        | 90247    |

<BR>
