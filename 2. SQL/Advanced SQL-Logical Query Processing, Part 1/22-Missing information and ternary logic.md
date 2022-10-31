### Outputs are just first 25 rows

```sql
SELECT  * FROM animals
    WHERE species = 'Dog' AND breed <> 'Bullmastiff'
```

| name    | species | primary_color | implant_chip_id                      | breed          | gender | birth_date | pattern  | admission_date |
| :------ | :------ | :------------ | :----------------------------------- | :------------- | :----- | :--------- | :------- | :------------- |
| Benji   | Dog     | Gray          | 646f0a76-14e4-42e7-9554-3af1ea6cc78f | English setter | M      | 2012-05-21 | Bicolor  | 2018-10-02     |
| Boomer  | Dog     | Black         | 01e2ad60-daa5-4681-b934-40c9dcf7d73a | Schnauzer      | M      | 2013-08-11 | Tricolor | 2017-01-11     |
| Brody   | Dog     | Black         | eb517826-e48a-41ae-a5fb-1bbeca23c05d | Schnauzer      | M      | 2007-08-23 | Tricolor | 2018-12-05     |
| Brutus  | Dog     | Ginger        | b7fad096-7cd1-42a7-85d6-0c3e6599dbeb | Weimaraner     | M      | 2011-04-04 | Bicolor  | 2018-08-03     |
| Callie  | Dog     | Cream         | 2636f17f-5893-482f-94a7-47eeb715047a | English setter | F      | 2003-08-28 | Solid    | 2017-12-19     |
| Emma    | Dog     | Black         | bac4c56d-ebb6-43e3-86f3-36506e17f74d | Schnauzer      | F      | 2006-12-26 | Tricolor | 2019-03-28     |
| Frankie | Dog     | Gray          | cc96e651-2f1c-45f8-bce2-26ac8c9868a7 | English setter | M      | 2003-09-10 | Bicolor  | 2016-06-20     |
| Gus     | Dog     | Cream         | 104a1427-d921-4d11-b45c-370c70e1578f | English setter | M      | 2014-10-29 | Solid    | 2016-09-28     |
| Jax     | Dog     | Ginger        | 24ad2ed9-e7e6-4571-8a45-3c9361418b07 | Weimaraner     | M      | 2009-02-06 | Bicolor  | 2017-10-03     |
| Lily    | Dog     | Black         | 11de2603-8bcf-49b6-9dde-46f893d93948 | Schnauzer      | F      | 2001-04-03 | Tricolor | 2016-06-18     |
| Lucy    | Dog     | Brown         | 3a389eaf-f623-4cd7-9ec9-2144ca9d244c | Weimaraner     | F      | 2003-04-04 | Tuxedo   | 2018-02-22     |
| Mac     | Dog     | Gray          | 3b55a74d-c5f7-44bc-9e6a-11c446628a0d | English setter | M      | 2006-12-23 | Bicolor  | 2018-01-03     |
| Nala    | Dog     | Gray          | 2929bba7-ed35-43f1-9f3e-01120beb4f8b | English setter | F      | 2018-06-02 | Bicolor  | 2019-07-19     |
| Poppy   | Dog     | Brown         | 10e33eb3-a2d5-4fcd-9428-1dbb389fbb30 | Weimaraner     | F      | 2011-04-09 | Tuxedo   | 2018-05-05     |
| Roxy    | Dog     | Brown         | 01dfa05c-86b4-4936-a608-1c59097fa2d3 | Weimaraner     | F      | 2013-03-28 | Tuxedo   | 2018-07-23     |

<br>

```sql
SELECT  * FROM persons
    where birth_date <> '20000303'
```

| email                           | first_name | last_name | birth_date | address      | state      | city                | zip_code |
| :------------------------------ | :--------- | :-------- | :--------- | :----------- | :--------- | :------------------ | :------- |
| adam.brown@gmail.com            | Adam       | Brown     | 1984-12-22 | 41 Hill      | California | Norwalk             | 90650    |
| albert.wood@gmail.com           | Albert     | Wood      | 1962-01-30 | 780 Sixth    | California | Bell Gardens        | 90201    |
| anna.thompson@hotmail.com       | Anna       | Thompson  | 1997-05-11 | 716 Meadow   | California | Los Angeles         | 90032    |
| anne.parker@icloud.com          | Anne       | Parker    | 1973-10-21 | 130 Eleventh | California | Carson              | 90248    |
| ashley.adams@icloud.com         | Ashley     | Adams     | 1984-02-23 | 101 North    | California | Carson              | 90749    |
| ashley.flores@animalshelter.com | Ashley     | Flores    | 1976-04-08 | 282 North    | California | Carson              | 90749    |
| benjamin.edwards@icloud.com     | Benjamin   | Edwards   | 1990-01-08 | 578 Dogwood  | California | Manhattan Beach     | 90266    |
| bonnie.davis@icloud.com         | Bonnie     | Davis     | 1951-01-29 | 193 Lake     | California | West Hollywood      | 90048    |
| brenda.martin@gmail.com         | Brenda     | Martin    | 1952-04-16 | 129 South    | California | Santa Monica        | 90403    |
| bruce.cook@icloud.com           | Bruce      | Cook      | 1953-01-12 | 667 Church   | California | South Whittier      | 90605    |
| bruce.harris@hotmail.com        | Bruce      | Harris    | 1957-11-26 | 370 Church   | California | South Whittier      | 90605    |
| carol.mitchell@gmail.com        | Carol      | Mitchell  | 1994-02-11 | 506 Cherry   | California | Torrance            | 90503    |
| carolyn.nelson@icloud.com       | Carolyn    | Nelson    | 1985-11-27 | 39 Third     | California | Whittier            | 90605    |
| catherine.howard@icloud.com     | Catherine  | Howard    | 1952-03-07 | 806 Second   | California | Los Angeles         | 90068    |
| catherine.nguyen@hotmail.com    | Catherine  | Nguyen    | 1946-03-29 | 882 Second   | California | Los Angeles         | 90068    |
| charles.phillips@gmail.com      | Charles    | Phillips  | 1980-05-11 | 812 Hill     | California | Long Beach          | 90813    |
| cynthia.campbell@hotmail.com    | Cynthia    | Campbell  | 1969-01-02 | 902 Eighth   | California | Inglewood           | 90307    |
| denise.ortiz@yahoo.com          | Denise     | Ortiz     | 1982-04-01 | 996 Cherry   | California | Santa Monica        | 90407    |
| diane.thompson@hotmail.com      | Diane      | Thompson  | 1998-06-25 | 762 Church   | California | Willowbrook         | 90059    |
| donna.brooks@hotmail.com        | Donna      | Brooks    | 1966-04-05 | 972 Cherry   | California | Los Angeles         | 90068    |
| doris.young@icloud.com          | Doris      | Young     | 1954-02-15 | 511 Ridge    | California | Torrance            | 90501    |
| elizabeth.clark@icloud.com      | Elizabeth  | Clark     | 1949-02-23 | 443 Twelfth  | California | Rancho Palos Verdes | 90275    |
| emily.perez@gmail.com           | Emily      | Perez     | 1971-08-25 | 759 Dogwood  | California | Lynwood             | 90262    |
