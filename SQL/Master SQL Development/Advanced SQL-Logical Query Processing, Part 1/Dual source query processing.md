```sql
SELECT * FROM staff CROSS JOIN Staff_Roles;
```

| email                            | hire_date  | role         |
| :------------------------------- | :--------- | :----------- |
| ashley.flores@animalshelter.com  | 2016-01-01 | Assistant    |
| dennis.hill@animalshelter.com    | 2018-10-07 | Assistant    |
| frances.hill@animalshelter.com   | 2016-01-01 | Assistant    |
| gerald.reyes@animalshelter.com   | 2018-03-20 | Assistant    |
| patrick.hughes@animalshelter.com | 2018-12-15 | Assistant    |
| robin.murphy@animalshelter.com   | 2018-08-15 | Assistant    |
| sharon.davis@animalshelter.com   | 2016-01-01 | Assistant    |
| wanda.myers@animalshelter.com    | 2016-01-01 | Assistant    |
| wayne.carter@animalshelter.com   | 2018-04-02 | Assistant    |
| ashley.flores@animalshelter.com  | 2016-01-01 | Janitor      |
| dennis.hill@animalshelter.com    | 2018-10-07 | Janitor      |
| frances.hill@animalshelter.com   | 2016-01-01 | Janitor      |
| gerald.reyes@animalshelter.com   | 2018-03-20 | Janitor      |
| patrick.hughes@animalshelter.com | 2018-12-15 | Janitor      |
| robin.murphy@animalshelter.com   | 2018-08-15 | Janitor      |
| sharon.davis@animalshelter.com   | 2016-01-01 | Janitor      |
| wanda.myers@animalshelter.com    | 2016-01-01 | Janitor      |
| wayne.carter@animalshelter.com   | 2018-04-02 | Janitor      |
| ashley.flores@animalshelter.com  | 2016-01-01 | Manager      |
| dennis.hill@animalshelter.com    | 2018-10-07 | Manager      |
| frances.hill@animalshelter.com   | 2016-01-01 | Manager      |
| gerald.reyes@animalshelter.com   | 2018-03-20 | Manager      |
| patrick.hughes@animalshelter.com | 2018-12-15 | Manager      |
| robin.murphy@animalshelter.com   | 2018-08-15 | Manager      |
| sharon.davis@animalshelter.com   | 2016-01-01 | Manager      |
| wanda.myers@animalshelter.com    | 2016-01-01 | Manager      |
| wayne.carter@animalshelter.com   | 2018-04-02 | Manager      |
| ashley.flores@animalshelter.com  | 2016-01-01 | Receptionist |
| dennis.hill@animalshelter.com    | 2018-10-07 | Receptionist |
| frances.hill@animalshelter.com   | 2016-01-01 | Receptionist |
| gerald.reyes@animalshelter.com   | 2018-03-20 | Receptionist |
| patrick.hughes@animalshelter.com | 2018-12-15 | Receptionist |
| robin.murphy@animalshelter.com   | 2018-08-15 | Receptionist |
| sharon.davis@animalshelter.com   | 2016-01-01 | Receptionist |
| wanda.myers@animalshelter.com    | 2016-01-01 | Receptionist |
| wayne.carter@animalshelter.com   | 2018-04-02 | Receptionist |
| ashley.flores@animalshelter.com  | 2016-01-01 | Veterinarian |
| dennis.hill@animalshelter.com    | 2018-10-07 | Veterinarian |
| frances.hill@animalshelter.com   | 2016-01-01 | Veterinarian |
| gerald.reyes@animalshelter.com   | 2018-03-20 | Veterinarian |
| patrick.hughes@animalshelter.com | 2018-12-15 | Veterinarian |
| robin.murphy@animalshelter.com   | 2018-08-15 | Veterinarian |
| sharon.davis@animalshelter.com   | 2016-01-01 | Veterinarian |
| wanda.myers@animalshelter.com    | 2016-01-01 | Veterinarian |
| wayne.carter@animalshelter.com   | 2018-04-02 | Veterinarian |

<br>

```sql
SELECT * FROM staff INNER JOIN Staff_Roles ON 1=1;
```

| email                            | hire_date  | role         |
| :------------------------------- | :--------- | :----------- |
| ashley.flores@animalshelter.com  | 2016-01-01 | Assistant    |
| dennis.hill@animalshelter.com    | 2018-10-07 | Assistant    |
| frances.hill@animalshelter.com   | 2016-01-01 | Assistant    |
| gerald.reyes@animalshelter.com   | 2018-03-20 | Assistant    |
| patrick.hughes@animalshelter.com | 2018-12-15 | Assistant    |
| robin.murphy@animalshelter.com   | 2018-08-15 | Assistant    |
| sharon.davis@animalshelter.com   | 2016-01-01 | Assistant    |
| wanda.myers@animalshelter.com    | 2016-01-01 | Assistant    |
| wayne.carter@animalshelter.com   | 2018-04-02 | Assistant    |
| ashley.flores@animalshelter.com  | 2016-01-01 | Janitor      |
| dennis.hill@animalshelter.com    | 2018-10-07 | Janitor      |
| frances.hill@animalshelter.com   | 2016-01-01 | Janitor      |
| gerald.reyes@animalshelter.com   | 2018-03-20 | Janitor      |
| patrick.hughes@animalshelter.com | 2018-12-15 | Janitor      |
| robin.murphy@animalshelter.com   | 2018-08-15 | Janitor      |
| sharon.davis@animalshelter.com   | 2016-01-01 | Janitor      |
| wanda.myers@animalshelter.com    | 2016-01-01 | Janitor      |
| wayne.carter@animalshelter.com   | 2018-04-02 | Janitor      |
| ashley.flores@animalshelter.com  | 2016-01-01 | Manager      |
| dennis.hill@animalshelter.com    | 2018-10-07 | Manager      |
| frances.hill@animalshelter.com   | 2016-01-01 | Manager      |
| gerald.reyes@animalshelter.com   | 2018-03-20 | Manager      |
| patrick.hughes@animalshelter.com | 2018-12-15 | Manager      |
| robin.murphy@animalshelter.com   | 2018-08-15 | Manager      |
| sharon.davis@animalshelter.com   | 2016-01-01 | Manager      |
| wanda.myers@animalshelter.com    | 2016-01-01 | Manager      |
| wayne.carter@animalshelter.com   | 2018-04-02 | Manager      |
| ashley.flores@animalshelter.com  | 2016-01-01 | Receptionist |
| dennis.hill@animalshelter.com    | 2018-10-07 | Receptionist |
| frances.hill@animalshelter.com   | 2016-01-01 | Receptionist |
| gerald.reyes@animalshelter.com   | 2018-03-20 | Receptionist |
| patrick.hughes@animalshelter.com | 2018-12-15 | Receptionist |
| robin.murphy@animalshelter.com   | 2018-08-15 | Receptionist |
| sharon.davis@animalshelter.com   | 2016-01-01 | Receptionist |
| wanda.myers@animalshelter.com    | 2016-01-01 | Receptionist |
| wayne.carter@animalshelter.com   | 2018-04-02 | Receptionist |
| ashley.flores@animalshelter.com  | 2016-01-01 | Veterinarian |
| dennis.hill@animalshelter.com    | 2018-10-07 | Veterinarian |
| frances.hill@animalshelter.com   | 2016-01-01 | Veterinarian |
| gerald.reyes@animalshelter.com   | 2018-03-20 | Veterinarian |
| patrick.hughes@animalshelter.com | 2018-12-15 | Veterinarian |
| robin.murphy@animalshelter.com   | 2018-08-15 | Veterinarian |
| sharon.davis@animalshelter.com   | 2016-01-01 | Veterinarian |
| wanda.myers@animalshelter.com    | 2016-01-01 | Veterinarian |
| wayne.carter@animalshelter.com   | 2018-04-02 | Veterinarian |

<br>

```sql
SELECT * FROM Animals AS A CROSS JOIN adoptions AS AD;
```

| name | species | primary_color | implant_chip_id                      | breed | gender | birth_date | pattern  | admission_date | name       | species | adopter_email                    | adoption_date | adoption_fee |
| :--- | :------ | :------------ | :----------------------------------- | :---- | :----- | :--------- | :------- | :------------- | :--------- | :------ | :------------------------------- | :------------ | :----------- |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Abby       | Dog     | patrick.hughes@animalshelter.com | 2018-08-30    | 58           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Ace        | Dog     | justin.ruiz@hotmail.com          | 2019-10-26    | 68           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Archie     | Cat     | patrick.hughes@animalshelter.com | 2018-08-30    | 82           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Bailey     | Dog     | wayne.turner@icloud.com          | 2019-07-26    | 50           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Baloo      | Rabbit  | jesse.cox@yahoo.com              | 2017-12-16    | 58           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Beau       | Dog     | shirley.williams@outlook.com     | 2018-04-15    | 90           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Benji      | Dog     | sharon.davis@animalshelter.com   | 2018-11-18    | 97           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Brody      | Dog     | george.scott@hotmail.com         | 2019-02-21    | 83           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Brutus     | Dog     | virginia.baker@gmail.com         | 2019-01-28    | 66           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Buddy      | Cat     | karen.smith@icloud.com           | 2019-09-27    | 73           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Callie     | Dog     | peter.smith@hotmail.com          | 2018-09-06    | 57           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Chico      | Dog     | lori.smith@icloud.com            | 2019-12-29    | 86           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Chubby     | Rabbit  | adam.brown@gmail.com             | 2018-05-27    | 65           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Cleo       | Cat     | melissa.lopez@gmail.com          | 2019-12-15    | 56           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Cooper     | Dog     | lisa.perez@icloud.com            | 2018-01-10    | 61           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Cosmo      | Cat     | diane.thompson@hotmail.com       | 2019-06-16    | 100          |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Dolly      | Dog     | laura.young@gmail.com            | 2019-12-30    | 93           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Emma       | Dog     | melissa.moore@icloud.com         | 2019-12-28    | 76           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Fiona      | Cat     | jerry.mitchell@icloud.com        | 2018-02-23    | 96           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | George     | Cat     | kevin.diaz@hotmail.com           | 2018-09-13    | 97           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Ginger     | Dog     | julie.adams@gmail.com            | 2017-03-07    | 79           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Gizmo      | Dog     | lori.smith@icloud.com            | 2019-12-26    | 54           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Gracie     | Cat     | gerald.reyes@animalshelter.com   | 2017-09-09    | 82           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Gus        | Dog     | frances.cook@yahoo.com           | 2018-12-29    | 96           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Hobbes     | Cat     | timothy.anderson@gmail.com       | 2017-11-08    | 73           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Hudini     | Rabbit  | kathy.thomas@gmail.com           | 2019-12-24    | 57           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Humphrey   | Rabbit  | kelly.allen@hotmail.com          | 2019-01-17    | 85           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Jake       | Dog     | shirley.williams@outlook.com     | 2019-11-12    | 84           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Jax        | Dog     | wayne.turner@icloud.com          | 2018-04-01    | 85           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Kiki       | Cat     | james.ramos@hotmail.com          | 2019-12-01    | 87           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | King       | Dog     | charles.phillips@gmail.com       | 2019-07-18    | 57           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Lexi       | Dog     | virginia.baker@gmail.com         | 2018-07-28    | 54           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Lily       | Dog     | mildred.gray@yahoo.com           | 2019-09-01    | 99           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Lucy       | Dog     | richard.castillo@icloud.com      | 2018-07-07    | 78           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Luke       | Dog     | ryan.garcia@hotmail.com          | 2018-05-04    | 65           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Luna       | Rabbit  | ryan.wright@hotmail.com          | 2019-04-14    | 55           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Mac        | Dog     | randy.bailey@icloud.com          | 2018-06-12    | 51           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Maddie     | Dog     | theresa.carter@icloud.com        | 2017-09-18    | 87           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Max        | Dog     | roy.rogers@hotmail.com           | 2017-09-23    | 62           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Millie     | Dog     | richard.castillo@icloud.com      | 2018-05-21    | 98           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Miss Kitty | Cat     | anna.thompson@hotmail.com        | 2019-11-11    | 83           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Misty      | Cat     | frances.hill@animalshelter.com   | 2019-12-13    | 86           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Mocha      | Dog     | roger.adams@hotmail.com          | 2019-07-22    | 93           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Nala       | Dog     | wayne.turner@icloud.com          | 2019-07-26    | 77           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Nova       | Cat     | walter.edwards@icloud.com        | 2018-09-03    | 98           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Oscar      | Cat     | bruce.harris@hotmail.com         | 2018-11-19    | 79           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Otis       | Dog     | doris.young@icloud.com           | 2019-08-02    | 51           |
| Abby | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     | Peanut     | Rabbit  | richard.castillo@icloud.com      | 2019-03-21    | 83           |

<br>

```sql
SELECT * FROM animals AS A INNER JOIN adoptions AS AD ON AD.NAME = A.NAME AND AD.Species = A.Species;
```

| name       | species | primary_color | implant_chip_id                      | breed          | gender | birth_date | pattern       | admission_date | name       | species | adopter_email                    | adoption_date | adoption_fee |
| :--------- | :------ | :------------ | :----------------------------------- | :------------- | :----- | :--------- | :------------ | :------------- | :--------- | :------ | :------------------------------- | :------------ | :----------- |
| Abby       | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL           | F      | 1999-02-19 | Tricolor      | 2016-07-19     | Abby       | Dog     | patrick.hughes@animalshelter.com | 2018-08-30    | 58           |
| Ace        | Dog     | Ginger        | 33d50c6b-9d2e-4eb1-8171-0466dee4f349 | NULL           | M      | 2005-12-19 | Bicolor       | 2019-06-25     | Ace        | Dog     | justin.ruiz@hotmail.com          | 2019-10-26    | 68           |
| Archie     | Cat     | Ginger        | 970d7094-ab66-4dca-a0d1-0c16264989af | Persian        | M      | 2009-08-26 | Tricolor      | 2016-07-10     | Archie     | Cat     | patrick.hughes@animalshelter.com | 2018-08-30    | 82           |
| Bailey     | Dog     | Ginger        | 36438bc9-e225-4038-97b2-1e28fd287957 | NULL           | F      | 2014-09-28 | Bicolor       | 2018-10-01     | Bailey     | Dog     | wayne.turner@icloud.com          | 2019-07-26    | 50           |
| Baloo      | Rabbit  | White         | f5ce3a02-1ec7-431d-8a76-09369e8d798b | English Lop    | M      | 2015-04-27 | Broken        | 2016-08-21     | Baloo      | Rabbit  | jesse.cox@yahoo.com              | 2017-12-16    | 58           |
| Beau       | Dog     | Cream         | 4b94a68c-0c97-4f70-9275-35b3a9eee8d9 | NULL           | M      | 2016-02-09 | Solid         | 2017-05-24     | Beau       | Dog     | shirley.williams@outlook.com     | 2018-04-15    | 90           |
| Benji      | Dog     | Gray          | 646f0a76-14e4-42e7-9554-3af1ea6cc78f | English setter | M      | 2012-05-21 | Bicolor       | 2018-10-02     | Benji      | Dog     | sharon.davis@animalshelter.com   | 2018-11-18    | 97           |
| Brody      | Dog     | Black         | eb517826-e48a-41ae-a5fb-1bbeca23c05d | Schnauzer      | M      | 2007-08-23 | Tricolor      | 2018-12-05     | Brody      | Dog     | george.scott@hotmail.com         | 2019-02-21    | 83           |
| Brutus     | Dog     | Ginger        | b7fad096-7cd1-42a7-85d6-0c3e6599dbeb | Weimaraner     | M      | 2011-04-04 | Bicolor       | 2018-08-03     | Brutus     | Dog     | virginia.baker@gmail.com         | 2019-01-28    | 66           |
| Buddy      | Cat     | White         | 6d49b3f6-e075-4f33-97a3-1d4878ee1345 | NULL           | M      | 2017-01-26 | Tortoiseshell | 2018-12-20     | Buddy      | Cat     | karen.smith@icloud.com           | 2019-09-27    | 73           |
| Callie     | Dog     | Cream         | 2636f17f-5893-482f-94a7-47eeb715047a | English setter | F      | 2003-08-28 | Solid         | 2017-12-19     | Callie     | Dog     | peter.smith@hotmail.com          | 2018-09-06    | 57           |
| Chico      | Dog     | Brown         | c6614119-945a-45a9-a5a2-3c8f840edc01 | NULL           | M      | 2014-03-20 | Tuxedo        | 2019-03-22     | Chico      | Dog     | lori.smith@icloud.com            | 2019-12-29    | 86           |
| Chubby     | Rabbit  | Ginger        | 561fea02-9c12-43b1-9ea8-071c9eae4c55 | NULL           | M      | 2013-02-07 | Broken        | 2017-10-31     | Chubby     | Rabbit  | adam.brown@gmail.com             | 2018-05-27    | 65           |
| Cleo       | Cat     | Black         | 0897655b-1486-4d5d-ad60-03a855afcaf3 | NULL           | F      | 2015-08-13 | Tortoiseshell | 2019-09-06     | Cleo       | Cat     | melissa.lopez@gmail.com          | 2019-12-15    | 56           |
| Cooper     | Dog     | Black         | 14f9e97b-6cd4-4ee4-9798-1c4f2376141b | NULL           | M      | 2009-11-15 | Tricolor      | 2017-01-15     | Cooper     | Dog     | lisa.perez@icloud.com            | 2018-01-10    | 61           |
| Cosmo      | Cat     | Cream         | 2754b9c9-5df4-4206-818d-21bdd1a093ed | NULL           | M      | 2017-11-09 | Solid         | 2019-05-13     | Cosmo      | Cat     | diane.thompson@hotmail.com       | 2019-06-16    | 100          |
| Dolly      | Dog     | Gray          | dbdc4f81-1709-49d6-9f73-1d2099eca35c | NULL           | F      | 2013-09-29 | Bicolor       | 2018-04-27     | Dolly      | Dog     | laura.young@gmail.com            | 2019-12-30    | 93           |
| Emma       | Dog     | Black         | bac4c56d-ebb6-43e3-86f3-36506e17f74d | Schnauzer      | F      | 2006-12-26 | Tricolor      | 2019-03-28     | Emma       | Dog     | melissa.moore@icloud.com         | 2019-12-28    | 76           |
| Fiona      | Cat     | Gray          | 90226140-f54e-419d-82e5-0ea81e0e6384 | NULL           | F      | 1999-05-23 | Calico        | 2017-01-13     | Fiona      | Cat     | jerry.mitchell@icloud.com        | 2018-02-23    | 96           |
| George     | Cat     | Brown         | 6fefc95e-7d46-4e25-b90a-0ba75f45d972 | NULL           | M      | 2001-10-04 | Bicolor       | 2017-11-24     | George     | Cat     | kevin.diaz@hotmail.com           | 2018-09-13    | 97           |
| Ginger     | Dog     | Ginger        | 9e241a82-ad77-49dc-ad15-0ac8d2e89dde | NULL           | F      | 2015-11-17 | Bicolor       | 2016-11-27     | Ginger     | Dog     | julie.adams@gmail.com            | 2017-03-07    | 79           |
| Gizmo      | Dog     | Brown         | 78556795-4748-447f-a2ce-336b01173a18 | NULL           | M      | 2006-01-23 | Tuxedo        | 2019-08-14     | Gizmo      | Dog     | lori.smith@icloud.com            | 2019-12-26    | 54           |
| Gracie     | Cat     | Black         | 66691184-06b1-4aa8-89b3-0def5fd9fbe1 | NULL           | F      | 2007-11-20 | Spotted       | 2017-05-21     | Gracie     | Cat     | gerald.reyes@animalshelter.com   | 2017-09-09    | 82           |
| Gus        | Dog     | Cream         | 104a1427-d921-4d11-b45c-370c70e1578f | English setter | M      | 2014-10-29 | Solid         | 2016-09-28     | Gus        | Dog     | frances.cook@yahoo.com           | 2018-12-29    | 96           |
| Hobbes     | Cat     | Gray          | 8788e7b9-dc20-45ef-8778-0066f60d790d | NULL           | M      | 2002-01-01 | Spotted       | 2016-07-29     | Hobbes     | Cat     | timothy.anderson@gmail.com       | 2017-11-08    | 73           |
| Hudini     | Rabbit  | Cream         | de295dd6-502f-43e3-b139-06ceb3fa2128 | NULL           | M      | 2018-03-22 | Brindle       | 2019-12-10     | Hudini     | Rabbit  | kathy.thomas@gmail.com           | 2019-12-24    | 57           |
| Humphrey   | Rabbit  | Cream         | 2a423596-5bf8-41a7-906a-0bd3ea15e17c | Belgian Hare   | M      | 2008-12-22 | Brindle       | 2017-12-31     | Humphrey   | Rabbit  | kelly.allen@hotmail.com          | 2019-01-17    | 85           |
| Jake       | Dog     | White         | 9209d54c-0238-457b-9922-02171e9df0e6 | Bullmastiff    | M      | 2011-02-27 | Tuxedo        | 2016-12-14     | Jake       | Dog     | shirley.williams@outlook.com     | 2019-11-12    | 84           |
| Jax        | Dog     | Ginger        | 24ad2ed9-e7e6-4571-8a45-3c9361418b07 | Weimaraner     | M      | 2009-02-06 | Bicolor       | 2017-10-03     | Jax        | Dog     | wayne.turner@icloud.com          | 2018-04-01    | 85           |
| Kiki       | Cat     | Cream         | 4e029101-2326-461c-8ff7-0eb809f110cb | NULL           | F      | 2015-07-07 | Tricolor      | 2019-11-16     | Kiki       | Cat     | james.ramos@hotmail.com          | 2019-12-01    | 87           |
| King       | Dog     | Brown         | 793e68eb-b952-4425-b9e2-0406ea01ac53 | NULL           | M      | 2015-09-12 | Tuxedo        | 2017-08-29     | King       | Dog     | charles.phillips@gmail.com       | 2019-07-18    | 57           |
| Lexi       | Dog     | Brown         | bfd890aa-afb6-4e8f-b60b-0124840eb504 | NULL           | F      | 2017-09-17 | Tuxedo        | 2018-06-22     | Lexi       | Dog     | virginia.baker@gmail.com         | 2018-07-28    | 54           |
| Lily       | Dog     | Black         | 11de2603-8bcf-49b6-9dde-46f893d93948 | Schnauzer      | F      | 2001-04-03 | Tricolor      | 2016-06-18     | Lily       | Dog     | mildred.gray@yahoo.com           | 2019-09-01    | 99           |
| Lucy       | Dog     | Brown         | 3a389eaf-f623-4cd7-9ec9-2144ca9d244c | Weimaraner     | F      | 2003-04-04 | Tuxedo        | 2018-02-22     | Lucy       | Dog     | richard.castillo@icloud.com      | 2018-07-07    | 78           |
| Luke       | Dog     | Gray          | fd6e5e29-0515-47a8-890d-096f07c83738 | NULL           | M      | 2017-04-23 | Bicolor       | 2017-12-23     | Luke       | Dog     | ryan.garcia@hotmail.com          | 2018-05-04    | 65           |
| Luna       | Rabbit  | Black         | 202c2c7d-7a25-449d-ad71-05482b04346f | NULL           | F      | 2010-11-16 | Broken        | 2017-08-18     | Luna       | Rabbit  | ryan.wright@hotmail.com          | 2019-04-14    | 55           |
| Mac        | Dog     | Gray          | 3b55a74d-c5f7-44bc-9e6a-11c446628a0d | English setter | M      | 2006-12-23 | Bicolor       | 2018-01-03     | Mac        | Dog     | randy.bailey@icloud.com          | 2018-06-12    | 51           |
| Maddie     | Dog     | Brown         | 2a37b609-d1f6-475f-a890-0234fcb2f0b8 | NULL           | F      | 2014-09-26 | Tuxedo        | 2017-05-02     | Maddie     | Dog     | theresa.carter@icloud.com        | 2017-09-18    | 87           |
| Max        | Dog     | Gray          | eb92c3b9-19bd-4ab1-b0f3-11dd7adb3cf0 | NULL           | M      | 2001-12-01 | Bicolor       | 2017-07-26     | Max        | Dog     | roy.rogers@hotmail.com           | 2017-09-23    | 62           |
| Millie     | Dog     | Ginger        | 7d69f605-c2ff-42ac-a5ac-20b63eb881ca | NULL           | F      | 2015-05-18 | Bicolor       | 2016-10-27     | Millie     | Dog     | richard.castillo@icloud.com      | 2018-05-21    | 98           |
| Miss Kitty | Cat     | Black         | 1ab8347c-6349-4092-9667-09653a9fd09c | Maine Coon     | F      | 2016-09-19 | Bicolor       | 2019-10-19     | Miss Kitty | Cat     | anna.thompson@hotmail.com        | 2019-11-11    | 83           |
| Misty      | Cat     | Ginger        | 805281a0-5de6-4ba8-8fb1-11cefe0575e0 | Siamese        | F      | 2009-02-21 | Spotted       | 2019-06-06     | Misty      | Cat     | frances.hill@animalshelter.com   | 2019-12-13    | 86           |
| Mocha      | Dog     | Brown         | 63dc76e7-3431-4455-9ad8-2fe4ff72f4af | NULL           | F      | 2002-09-23 | Tuxedo        | 2019-01-10     | Mocha      | Dog     | roger.adams@hotmail.com          | 2019-07-22    | 93           |
| Nala       | Dog     | Gray          | 2929bba7-ed35-43f1-9f3e-01120beb4f8b | English setter | F      | 2018-06-02 | Bicolor       | 2019-07-19     | Nala       | Dog     | wayne.turner@icloud.com          | 2019-07-26    | 77           |
| Nova       | Cat     | White         | 81802526-cae2-40bb-846a-01d2156545b4 | Sphynx         | F      | 2011-04-07 | Tortoiseshell | 2017-12-09     | Nova       | Cat     | walter.edwards@icloud.com        | 2018-09-03    | 98           |
| Oscar      | Cat     | White         | 18c0c340-e7a3-430e-baf5-13c938287d4f | NULL           | M      | 2008-06-08 | Bicolor       | 2018-02-23     | Oscar      | Cat     | bruce.harris@hotmail.com         | 2018-11-19    | 79           |
| Otis       | Dog     | Ginger        | cb5444d8-39fc-4a56-aa83-17e1bfd6e960 | NULL           | M      | 2008-05-15 | Bicolor       | 2018-07-22     | Otis       | Dog     | doris.young@icloud.com           | 2019-08-02    | 51           |
| Peanut     | Rabbit  | Gray          | 99a021d1-5e5a-4499-8759-02b3d89ce9af | NULL           | M      | 2008-10-14 | Broken        | 2018-04-11     | Peanut     | Rabbit  | richard.castillo@icloud.com      | 2019-03-21    | 83           |

<br>

```sql
SELECT AD.*, A.implant_chip_id,A.breed  FROM animals AS A INNER JOIN adoptions AS AD ON AD.NAME = A.NAME AND AD.Species = A.Species;
```

| name       | species | adopter_email                    | adoption_date | adoption_fee | implant_chip_id                      | breed          |
| :--------- | :------ | :------------------------------- | :------------ | :----------- | :----------------------------------- | :------------- |
| Abby       | Dog     | patrick.hughes@animalshelter.com | 2018-08-30    | 58           | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL           |
| Ace        | Dog     | justin.ruiz@hotmail.com          | 2019-10-26    | 68           | 33d50c6b-9d2e-4eb1-8171-0466dee4f349 | NULL           |
| Archie     | Cat     | patrick.hughes@animalshelter.com | 2018-08-30    | 82           | 970d7094-ab66-4dca-a0d1-0c16264989af | Persian        |
| Bailey     | Dog     | wayne.turner@icloud.com          | 2019-07-26    | 50           | 36438bc9-e225-4038-97b2-1e28fd287957 | NULL           |
| Baloo      | Rabbit  | jesse.cox@yahoo.com              | 2017-12-16    | 58           | f5ce3a02-1ec7-431d-8a76-09369e8d798b | English Lop    |
| Beau       | Dog     | shirley.williams@outlook.com     | 2018-04-15    | 90           | 4b94a68c-0c97-4f70-9275-35b3a9eee8d9 | NULL           |
| Benji      | Dog     | sharon.davis@animalshelter.com   | 2018-11-18    | 97           | 646f0a76-14e4-42e7-9554-3af1ea6cc78f | English setter |
| Brody      | Dog     | george.scott@hotmail.com         | 2019-02-21    | 83           | eb517826-e48a-41ae-a5fb-1bbeca23c05d | Schnauzer      |
| Brutus     | Dog     | virginia.baker@gmail.com         | 2019-01-28    | 66           | b7fad096-7cd1-42a7-85d6-0c3e6599dbeb | Weimaraner     |
| Buddy      | Cat     | karen.smith@icloud.com           | 2019-09-27    | 73           | 6d49b3f6-e075-4f33-97a3-1d4878ee1345 | NULL           |
| Callie     | Dog     | peter.smith@hotmail.com          | 2018-09-06    | 57           | 2636f17f-5893-482f-94a7-47eeb715047a | English setter |
| Chico      | Dog     | lori.smith@icloud.com            | 2019-12-29    | 86           | c6614119-945a-45a9-a5a2-3c8f840edc01 | NULL           |
| Chubby     | Rabbit  | adam.brown@gmail.com             | 2018-05-27    | 65           | 561fea02-9c12-43b1-9ea8-071c9eae4c55 | NULL           |
| Cleo       | Cat     | melissa.lopez@gmail.com          | 2019-12-15    | 56           | 0897655b-1486-4d5d-ad60-03a855afcaf3 | NULL           |
| Cooper     | Dog     | lisa.perez@icloud.com            | 2018-01-10    | 61           | 14f9e97b-6cd4-4ee4-9798-1c4f2376141b | NULL           |
| Cosmo      | Cat     | diane.thompson@hotmail.com       | 2019-06-16    | 100          | 2754b9c9-5df4-4206-818d-21bdd1a093ed | NULL           |
| Dolly      | Dog     | laura.young@gmail.com            | 2019-12-30    | 93           | dbdc4f81-1709-49d6-9f73-1d2099eca35c | NULL           |
| Emma       | Dog     | melissa.moore@icloud.com         | 2019-12-28    | 76           | bac4c56d-ebb6-43e3-86f3-36506e17f74d | Schnauzer      |
| Fiona      | Cat     | jerry.mitchell@icloud.com        | 2018-02-23    | 96           | 90226140-f54e-419d-82e5-0ea81e0e6384 | NULL           |
| George     | Cat     | kevin.diaz@hotmail.com           | 2018-09-13    | 97           | 6fefc95e-7d46-4e25-b90a-0ba75f45d972 | NULL           |
| Ginger     | Dog     | julie.adams@gmail.com            | 2017-03-07    | 79           | 9e241a82-ad77-49dc-ad15-0ac8d2e89dde | NULL           |
| Gizmo      | Dog     | lori.smith@icloud.com            | 2019-12-26    | 54           | 78556795-4748-447f-a2ce-336b01173a18 | NULL           |
| Gracie     | Cat     | gerald.reyes@animalshelter.com   | 2017-09-09    | 82           | 66691184-06b1-4aa8-89b3-0def5fd9fbe1 | NULL           |
| Gus        | Dog     | frances.cook@yahoo.com           | 2018-12-29    | 96           | 104a1427-d921-4d11-b45c-370c70e1578f | English setter |
| Hobbes     | Cat     | timothy.anderson@gmail.com       | 2017-11-08    | 73           | 8788e7b9-dc20-45ef-8778-0066f60d790d | NULL           |
| Hudini     | Rabbit  | kathy.thomas@gmail.com           | 2019-12-24    | 57           | de295dd6-502f-43e3-b139-06ceb3fa2128 | NULL           |
| Humphrey   | Rabbit  | kelly.allen@hotmail.com          | 2019-01-17    | 85           | 2a423596-5bf8-41a7-906a-0bd3ea15e17c | Belgian Hare   |
| Jake       | Dog     | shirley.williams@outlook.com     | 2019-11-12    | 84           | 9209d54c-0238-457b-9922-02171e9df0e6 | Bullmastiff    |
| Jax        | Dog     | wayne.turner@icloud.com          | 2018-04-01    | 85           | 24ad2ed9-e7e6-4571-8a45-3c9361418b07 | Weimaraner     |
| Kiki       | Cat     | james.ramos@hotmail.com          | 2019-12-01    | 87           | 4e029101-2326-461c-8ff7-0eb809f110cb | NULL           |
| King       | Dog     | charles.phillips@gmail.com       | 2019-07-18    | 57           | 793e68eb-b952-4425-b9e2-0406ea01ac53 | NULL           |
| Lexi       | Dog     | virginia.baker@gmail.com         | 2018-07-28    | 54           | bfd890aa-afb6-4e8f-b60b-0124840eb504 | NULL           |
| Lily       | Dog     | mildred.gray@yahoo.com           | 2019-09-01    | 99           | 11de2603-8bcf-49b6-9dde-46f893d93948 | Schnauzer      |
| Lucy       | Dog     | richard.castillo@icloud.com      | 2018-07-07    | 78           | 3a389eaf-f623-4cd7-9ec9-2144ca9d244c | Weimaraner     |
| Luke       | Dog     | ryan.garcia@hotmail.com          | 2018-05-04    | 65           | fd6e5e29-0515-47a8-890d-096f07c83738 | NULL           |
| Luna       | Rabbit  | ryan.wright@hotmail.com          | 2019-04-14    | 55           | 202c2c7d-7a25-449d-ad71-05482b04346f | NULL           |
| Mac        | Dog     | randy.bailey@icloud.com          | 2018-06-12    | 51           | 3b55a74d-c5f7-44bc-9e6a-11c446628a0d | English setter |
| Maddie     | Dog     | theresa.carter@icloud.com        | 2017-09-18    | 87           | 2a37b609-d1f6-475f-a890-0234fcb2f0b8 | NULL           |
| Max        | Dog     | roy.rogers@hotmail.com           | 2017-09-23    | 62           | eb92c3b9-19bd-4ab1-b0f3-11dd7adb3cf0 | NULL           |
| Millie     | Dog     | richard.castillo@icloud.com      | 2018-05-21    | 98           | 7d69f605-c2ff-42ac-a5ac-20b63eb881ca | NULL           |
| Miss Kitty | Cat     | anna.thompson@hotmail.com        | 2019-11-11    | 83           | 1ab8347c-6349-4092-9667-09653a9fd09c | Maine Coon     |
| Misty      | Cat     | frances.hill@animalshelter.com   | 2019-12-13    | 86           | 805281a0-5de6-4ba8-8fb1-11cefe0575e0 | Siamese        |
| Mocha      | Dog     | roger.adams@hotmail.com          | 2019-07-22    | 93           | 63dc76e7-3431-4455-9ad8-2fe4ff72f4af | NULL           |
| Nala       | Dog     | wayne.turner@icloud.com          | 2019-07-26    | 77           | 2929bba7-ed35-43f1-9f3e-01120beb4f8b | English setter |
| Nova       | Cat     | walter.edwards@icloud.com        | 2018-09-03    | 98           | 81802526-cae2-40bb-846a-01d2156545b4 | Sphynx         |
| Oscar      | Cat     | bruce.harris@hotmail.com         | 2018-11-19    | 79           | 18c0c340-e7a3-430e-baf5-13c938287d4f | NULL           |
| Otis       | Dog     | doris.young@icloud.com           | 2019-08-02    | 51           | cb5444d8-39fc-4a56-aa83-17e1bfd6e960 | NULL           |
| Peanut     | Rabbit  | richard.castillo@icloud.com      | 2019-03-21    | 83           | 99a021d1-5e5a-4499-8759-02b3d89ce9af | NULL           |

<br>

```sql
SELECT AD.*, A.implant_chip_id,A.breed  FROM animals AS A LEFT OUTER JOIN adoptions AS AD ON AD.NAME = A.NAME AND AD.Species = A.Species;
```

| name       | species | adopter_email                    | adoption_date | adoption_fee | implant_chip_id                      | breed          |
| :--------- | :------ | :------------------------------- | :------------ | :----------- | :----------------------------------- | :------------- |
| Abby       | Dog     | patrick.hughes@animalshelter.com | 2018-08-30    | 58           | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL           |
| Ace        | Dog     | justin.ruiz@hotmail.com          | 2019-10-26    | 68           | 33d50c6b-9d2e-4eb1-8171-0466dee4f349 | NULL           |
| Archie     | Cat     | patrick.hughes@animalshelter.com | 2018-08-30    | 82           | 970d7094-ab66-4dca-a0d1-0c16264989af | Persian        |
| Bailey     | Dog     | wayne.turner@icloud.com          | 2019-07-26    | 50           | 36438bc9-e225-4038-97b2-1e28fd287957 | NULL           |
| Baloo      | Rabbit  | jesse.cox@yahoo.com              | 2017-12-16    | 58           | f5ce3a02-1ec7-431d-8a76-09369e8d798b | English Lop    |
| Beau       | Dog     | shirley.williams@outlook.com     | 2018-04-15    | 90           | 4b94a68c-0c97-4f70-9275-35b3a9eee8d9 | NULL           |
| Benji      | Dog     | sharon.davis@animalshelter.com   | 2018-11-18    | 97           | 646f0a76-14e4-42e7-9554-3af1ea6cc78f | English setter |
| Brody      | Dog     | george.scott@hotmail.com         | 2019-02-21    | 83           | eb517826-e48a-41ae-a5fb-1bbeca23c05d | Schnauzer      |
| Brutus     | Dog     | virginia.baker@gmail.com         | 2019-01-28    | 66           | b7fad096-7cd1-42a7-85d6-0c3e6599dbeb | Weimaraner     |
| Buddy      | Cat     | karen.smith@icloud.com           | 2019-09-27    | 73           | 6d49b3f6-e075-4f33-97a3-1d4878ee1345 | NULL           |
| Callie     | Dog     | peter.smith@hotmail.com          | 2018-09-06    | 57           | 2636f17f-5893-482f-94a7-47eeb715047a | English setter |
| Chico      | Dog     | lori.smith@icloud.com            | 2019-12-29    | 86           | c6614119-945a-45a9-a5a2-3c8f840edc01 | NULL           |
| Chubby     | Rabbit  | adam.brown@gmail.com             | 2018-05-27    | 65           | 561fea02-9c12-43b1-9ea8-071c9eae4c55 | NULL           |
| Cleo       | Cat     | melissa.lopez@gmail.com          | 2019-12-15    | 56           | 0897655b-1486-4d5d-ad60-03a855afcaf3 | NULL           |
| Cooper     | Dog     | lisa.perez@icloud.com            | 2018-01-10    | 61           | 14f9e97b-6cd4-4ee4-9798-1c4f2376141b | NULL           |
| Cosmo      | Cat     | diane.thompson@hotmail.com       | 2019-06-16    | 100          | 2754b9c9-5df4-4206-818d-21bdd1a093ed | NULL           |
| Dolly      | Dog     | laura.young@gmail.com            | 2019-12-30    | 93           | dbdc4f81-1709-49d6-9f73-1d2099eca35c | NULL           |
| Emma       | Dog     | melissa.moore@icloud.com         | 2019-12-28    | 76           | bac4c56d-ebb6-43e3-86f3-36506e17f74d | Schnauzer      |
| Fiona      | Cat     | jerry.mitchell@icloud.com        | 2018-02-23    | 96           | 90226140-f54e-419d-82e5-0ea81e0e6384 | NULL           |
| George     | Cat     | kevin.diaz@hotmail.com           | 2018-09-13    | 97           | 6fefc95e-7d46-4e25-b90a-0ba75f45d972 | NULL           |
| Ginger     | Dog     | julie.adams@gmail.com            | 2017-03-07    | 79           | 9e241a82-ad77-49dc-ad15-0ac8d2e89dde | NULL           |
| Gizmo      | Dog     | lori.smith@icloud.com            | 2019-12-26    | 54           | 78556795-4748-447f-a2ce-336b01173a18 | NULL           |
| Gracie     | Cat     | gerald.reyes@animalshelter.com   | 2017-09-09    | 82           | 66691184-06b1-4aa8-89b3-0def5fd9fbe1 | NULL           |
| Gus        | Dog     | frances.cook@yahoo.com           | 2018-12-29    | 96           | 104a1427-d921-4d11-b45c-370c70e1578f | English setter |
| Hobbes     | Cat     | timothy.anderson@gmail.com       | 2017-11-08    | 73           | 8788e7b9-dc20-45ef-8778-0066f60d790d | NULL           |
| Hudini     | Rabbit  | kathy.thomas@gmail.com           | 2019-12-24    | 57           | de295dd6-502f-43e3-b139-06ceb3fa2128 | NULL           |
| Humphrey   | Rabbit  | kelly.allen@hotmail.com          | 2019-01-17    | 85           | 2a423596-5bf8-41a7-906a-0bd3ea15e17c | Belgian Hare   |
| Jake       | Dog     | shirley.williams@outlook.com     | 2019-11-12    | 84           | 9209d54c-0238-457b-9922-02171e9df0e6 | Bullmastiff    |
| Jax        | Dog     | wayne.turner@icloud.com          | 2018-04-01    | 85           | 24ad2ed9-e7e6-4571-8a45-3c9361418b07 | Weimaraner     |
| Kiki       | Cat     | james.ramos@hotmail.com          | 2019-12-01    | 87           | 4e029101-2326-461c-8ff7-0eb809f110cb | NULL           |
| King       | Dog     | charles.phillips@gmail.com       | 2019-07-18    | 57           | 793e68eb-b952-4425-b9e2-0406ea01ac53 | NULL           |
| Lexi       | Dog     | virginia.baker@gmail.com         | 2018-07-28    | 54           | bfd890aa-afb6-4e8f-b60b-0124840eb504 | NULL           |
| Lily       | Dog     | mildred.gray@yahoo.com           | 2019-09-01    | 99           | 11de2603-8bcf-49b6-9dde-46f893d93948 | Schnauzer      |
| Lucy       | Dog     | richard.castillo@icloud.com      | 2018-07-07    | 78           | 3a389eaf-f623-4cd7-9ec9-2144ca9d244c | Weimaraner     |
| Luke       | Dog     | ryan.garcia@hotmail.com          | 2018-05-04    | 65           | fd6e5e29-0515-47a8-890d-096f07c83738 | NULL           |
| Luna       | Rabbit  | ryan.wright@hotmail.com          | 2019-04-14    | 55           | 202c2c7d-7a25-449d-ad71-05482b04346f | NULL           |
| Mac        | Dog     | randy.bailey@icloud.com          | 2018-06-12    | 51           | 3b55a74d-c5f7-44bc-9e6a-11c446628a0d | English setter |
| Maddie     | Dog     | theresa.carter@icloud.com        | 2017-09-18    | 87           | 2a37b609-d1f6-475f-a890-0234fcb2f0b8 | NULL           |
| Max        | Dog     | roy.rogers@hotmail.com           | 2017-09-23    | 62           | eb92c3b9-19bd-4ab1-b0f3-11dd7adb3cf0 | NULL           |
| Millie     | Dog     | richard.castillo@icloud.com      | 2018-05-21    | 98           | 7d69f605-c2ff-42ac-a5ac-20b63eb881ca | NULL           |
| Miss Kitty | Cat     | anna.thompson@hotmail.com        | 2019-11-11    | 83           | 1ab8347c-6349-4092-9667-09653a9fd09c | Maine Coon     |
| Misty      | Cat     | frances.hill@animalshelter.com   | 2019-12-13    | 86           | 805281a0-5de6-4ba8-8fb1-11cefe0575e0 | Siamese        |
| Mocha      | Dog     | roger.adams@hotmail.com          | 2019-07-22    | 93           | 63dc76e7-3431-4455-9ad8-2fe4ff72f4af | NULL           |
| Nala       | Dog     | wayne.turner@icloud.com          | 2019-07-26    | 77           | 2929bba7-ed35-43f1-9f3e-01120beb4f8b | English setter |
| Nova       | Cat     | walter.edwards@icloud.com        | 2018-09-03    | 98           | 81802526-cae2-40bb-846a-01d2156545b4 | Sphynx         |
| Oscar      | Cat     | bruce.harris@hotmail.com         | 2018-11-19    | 79           | 18c0c340-e7a3-430e-baf5-13c938287d4f | NULL           |
| Otis       | Dog     | doris.young@icloud.com           | 2019-08-02    | 51           | cb5444d8-39fc-4a56-aa83-17e1bfd6e960 | NULL           |
| Peanut     | Rabbit  | richard.castillo@icloud.com      | 2019-03-21    | 83           | 99a021d1-5e5a-4499-8759-02b3d89ce9af | NULL           |

<br>
