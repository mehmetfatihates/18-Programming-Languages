### Outputs are just first 25 rows

```sql
SELECT  * FROM
    animals AS A
    INNER JOIN adoptions AS AD
        ON AD.name=A.name AND AD.species = A.species
    INNER JOIN persons AS P
        ON P.email = AD.adopter_email;
```

| name   | species | primary_color | implant_chip_id                      | breed          | gender | birth_date | pattern       | admission_date | name   | species | adopter_email                    | adoption_date | adoption_fee | email                            | first_name | last_name | birth_date | address        | state      | city                  | zip_code |
| :----- | :------ | :------------ | :----------------------------------- | :------------- | :----- | :--------- | :------------ | :------------- | :----- | :------ | :------------------------------- | :------------ | :----------- | :------------------------------- | :--------- | :-------- | :--------- | :------------- | :--------- | :-------------------- | :------- |
| Abby   | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL           | F      | 1999-02-19 | Tricolor      | 2016-07-19     | Abby   | Dog     | patrick.hughes@animalshelter.com | 2018-08-30    | 58           | patrick.hughes@animalshelter.com | Patrick    | Hughes    | 1988-10-11 | 660 Spruce     | California | La Mirada             | 90638    |
| Ace    | Dog     | Ginger        | 33d50c6b-9d2e-4eb1-8171-0466dee4f349 | NULL           | M      | 2005-12-19 | Bicolor       | 2019-06-25     | Ace    | Dog     | justin.ruiz@hotmail.com          | 2019-10-26    | 68           | justin.ruiz@hotmail.com          | Justin     | Ruiz      | 1991-07-13 | 157 Church     | California | Gardena               | 90247    |
| Archie | Cat     | Ginger        | 970d7094-ab66-4dca-a0d1-0c16264989af | Persian        | M      | 2009-08-26 | Tricolor      | 2016-07-10     | Archie | Cat     | patrick.hughes@animalshelter.com | 2018-08-30    | 82           | patrick.hughes@animalshelter.com | Patrick    | Hughes    | 1988-10-11 | 660 Spruce     | California | La Mirada             | 90638    |
| Bailey | Dog     | Ginger        | 36438bc9-e225-4038-97b2-1e28fd287957 | NULL           | F      | 2014-09-28 | Bicolor       | 2018-10-01     | Bailey | Dog     | wayne.turner@icloud.com          | 2019-07-26    | 50           | wayne.turner@icloud.com          | Wayne      | Turner    | 1966-02-18 | 350 Washington | California | Inglewood             | 90309    |
| Baloo  | Rabbit  | White         | f5ce3a02-1ec7-431d-8a76-09369e8d798b | English Lop    | M      | 2015-04-27 | Broken        | 2016-08-21     | Baloo  | Rabbit  | jesse.cox@yahoo.com              | 2017-12-16    | 58           | jesse.cox@yahoo.com              | Jesse      | Cox       | 1990-07-26 | 544 North      | California | South Gate            | 90280    |
| Beau   | Dog     | Cream         | 4b94a68c-0c97-4f70-9275-35b3a9eee8d9 | NULL           | M      | 2016-02-09 | Solid         | 2017-05-24     | Beau   | Dog     | shirley.williams@outlook.com     | 2018-04-15    | 90           | shirley.williams@outlook.com     | Shirley    | Williams  | 1966-08-17 | 11 Lincoln     | California | Santa Monica          | 90408    |
| Benji  | Dog     | Gray          | 646f0a76-14e4-42e7-9554-3af1ea6cc78f | English setter | M      | 2012-05-21 | Bicolor       | 2018-10-02     | Benji  | Dog     | sharon.davis@animalshelter.com   | 2018-11-18    | 97           | sharon.davis@animalshelter.com   | Sharon     | Davis     | 1988-09-25 | 372 Seventh    | California | Los Angeles           | 90068    |
| Brody  | Dog     | Black         | eb517826-e48a-41ae-a5fb-1bbeca23c05d | Schnauzer      | M      | 2007-08-23 | Tricolor      | 2018-12-05     | Brody  | Dog     | george.scott@hotmail.com         | 2019-02-21    | 83           | george.scott@hotmail.com         | George     | Scott     | 1982-05-03 | 424 Cedar      | California | Los Angeles           | 90004    |
| Brutus | Dog     | Ginger        | b7fad096-7cd1-42a7-85d6-0c3e6599dbeb | Weimaraner     | M      | 2011-04-04 | Bicolor       | 2018-08-03     | Brutus | Dog     | virginia.baker@gmail.com         | 2019-01-28    | 66           | virginia.baker@gmail.com         | Virginia   | Baker     | 1990-11-25 | 6 Jefferson    | California | Santa Monica          | 90410    |
| Buddy  | Cat     | White         | 6d49b3f6-e075-4f33-97a3-1d4878ee1345 | NULL           | M      | 2017-01-26 | Tortoiseshell | 2018-12-20     | Buddy  | Cat     | karen.smith@icloud.com           | 2019-09-27    | 73           | karen.smith@icloud.com           | Karen      | Smith     | 1948-03-01 | 110 North      | California | West Rancho Dominguez | 90220    |
| Callie | Dog     | Cream         | 2636f17f-5893-482f-94a7-47eeb715047a | English setter | F      | 2003-08-28 | Solid         | 2017-12-19     | Callie | Dog     | peter.smith@hotmail.com          | 2018-09-06    | 57           | peter.smith@hotmail.com          | Peter      | Smith     | 1986-08-27 | 56 Main        | California | Los Angeles           | 90004    |
| Chico  | Dog     | Brown         | c6614119-945a-45a9-a5a2-3c8f840edc01 | NULL           | M      | 2014-03-20 | Tuxedo        | 2019-03-22     | Chico  | Dog     | lori.smith@icloud.com            | 2019-12-29    | 86           | lori.smith@icloud.com            | Lori       | Smith     | 1977-02-11 | 324 Sixth      | California | Signal Hill           | 90755    |
| Chubby | Rabbit  | Ginger        | 561fea02-9c12-43b1-9ea8-071c9eae4c55 | NULL           | M      | 2013-02-07 | Broken        | 2017-10-31     | Chubby | Rabbit  | adam.brown@gmail.com             | 2018-05-27    | 65           | adam.brown@gmail.com             | Adam       | Brown     | 1984-12-22 | 41 Hill        | California | Norwalk               | 90650    |
| Cleo   | Cat     | Black         | 0897655b-1486-4d5d-ad60-03a855afcaf3 | NULL           | F      | 2015-08-13 | Tortoiseshell | 2019-09-06     | Cleo   | Cat     | melissa.lopez@gmail.com          | 2019-12-15    | 56           | melissa.lopez@gmail.com          | Melissa    | Lopez     | NULL       | 43 Park        | California | Bell Gardens          | 90202    |
| Cooper | Dog     | Black         | 14f9e97b-6cd4-4ee4-9798-1c4f2376141b | NULL           | M      | 2009-11-15 | Tricolor      | 2017-01-15     | Cooper | Dog     | lisa.perez@icloud.com            | 2018-01-10    | 61           | lisa.perez@icloud.com            | Lisa       | Perez     | 1949-08-08 | 502 River      | California | Hawthorne             | 90310    |
| Cosmo  | Cat     | Cream         | 2754b9c9-5df4-4206-818d-21bdd1a093ed | NULL           | M      | 2017-11-09 | Solid         | 2019-05-13     | Cosmo  | Cat     | diane.thompson@hotmail.com       | 2019-06-16    | 100          | diane.thompson@hotmail.com       | Diane      | Thompson  | 1998-06-25 | 762 Church     | California | Willowbrook           | 90059    |
| Dolly  | Dog     | Gray          | dbdc4f81-1709-49d6-9f73-1d2099eca35c | NULL           | F      | 2013-09-29 | Bicolor       | 2018-04-27     | Dolly  | Dog     | laura.young@gmail.com            | 2019-12-30    | 93           | laura.young@gmail.com            | Laura      | Young     | 1987-05-19 | 29 First       | California | Torrance              | 90503    |
| Emma   | Dog     | Black         | bac4c56d-ebb6-43e3-86f3-36506e17f74d | Schnauzer      | F      | 2006-12-26 | Tricolor      | 2019-03-28     | Emma   | Dog     | melissa.moore@icloud.com         | 2019-12-28    | 76           | melissa.moore@icloud.com         | Melissa    | Moore     | 1960-06-27 | 156 Park       | California | Bell Gardens          | 90202    |
| Fiona  | Cat     | Gray          | 90226140-f54e-419d-82e5-0ea81e0e6384 | NULL           | F      | 1999-05-23 | Calico        | 2017-01-13     | Fiona  | Cat     | jerry.mitchell@icloud.com        | 2018-02-23    | 96           | jerry.mitchell@icloud.com        | Jerry      | Mitchell  | 1981-09-22 | 732 Johnson    | California | South Whittier        | 90605    |
| George | Cat     | Brown         | 6fefc95e-7d46-4e25-b90a-0ba75f45d972 | NULL           | M      | 2001-10-04 | Bicolor       | 2017-11-24     | George | Cat     | kevin.diaz@hotmail.com           | 2018-09-13    | 97           | kevin.diaz@hotmail.com           | Kevin      | Diaz      | 1974-01-18 | 262 Jackson    | California | Torrance              | 90509    |
| Ginger | Dog     | Ginger        | 9e241a82-ad77-49dc-ad15-0ac8d2e89dde | NULL           | F      | 2015-11-17 | Bicolor       | 2016-11-27     | Ginger | Dog     | julie.adams@gmail.com            | 2017-03-07    | 79           | julie.adams@gmail.com            | Julie      | Adams     | 1957-01-31 | 133 Hill       | California | Gardena               | 90247    |
| Gizmo  | Dog     | Brown         | 78556795-4748-447f-a2ce-336b01173a18 | NULL           | M      | 2006-01-23 | Tuxedo        | 2019-08-14     | Gizmo  | Dog     | lori.smith@icloud.com            | 2019-12-26    | 54           | lori.smith@icloud.com            | Lori       | Smith     | 1977-02-11 | 324 Sixth      | California | Signal Hill           | 90755    |
| Gracie | Cat     | Black         | 66691184-06b1-4aa8-89b3-0def5fd9fbe1 | NULL           | F      | 2007-11-20 | Spotted       | 2017-05-21     | Gracie | Cat     | gerald.reyes@animalshelter.com   | 2017-09-09    | 82           | gerald.reyes@animalshelter.com   | Gerald     | Reyes     | 1956-02-10 | 761 Eighth     | California | Long Beach            | 90853    |

<br>

```sql
SELECT  * FROM
    animals AS A
    LEFT OUTER JOIN adoptions AS AD
        ON AD.name=A.name AND AD.species = A.species
    INNER JOIN persons AS P
        ON P.email = AD.adopter_email;
```

| name   | species | primary_color | implant_chip_id                      | breed          | gender | birth_date | pattern       | admission_date | name   | species | adopter_email                    | adoption_date | adoption_fee | email                            | first_name | last_name | birth_date | address        | state      | city                  | zip_code |
| :----- | :------ | :------------ | :----------------------------------- | :------------- | :----- | :--------- | :------------ | :------------- | :----- | :------ | :------------------------------- | :------------ | :----------- | :------------------------------- | :--------- | :-------- | :--------- | :------------- | :--------- | :-------------------- | :------- |
| Abby   | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL           | F      | 1999-02-19 | Tricolor      | 2016-07-19     | Abby   | Dog     | patrick.hughes@animalshelter.com | 2018-08-30    | 58           | patrick.hughes@animalshelter.com | Patrick    | Hughes    | 1988-10-11 | 660 Spruce     | California | La Mirada             | 90638    |
| Ace    | Dog     | Ginger        | 33d50c6b-9d2e-4eb1-8171-0466dee4f349 | NULL           | M      | 2005-12-19 | Bicolor       | 2019-06-25     | Ace    | Dog     | justin.ruiz@hotmail.com          | 2019-10-26    | 68           | justin.ruiz@hotmail.com          | Justin     | Ruiz      | 1991-07-13 | 157 Church     | California | Gardena               | 90247    |
| Archie | Cat     | Ginger        | 970d7094-ab66-4dca-a0d1-0c16264989af | Persian        | M      | 2009-08-26 | Tricolor      | 2016-07-10     | Archie | Cat     | patrick.hughes@animalshelter.com | 2018-08-30    | 82           | patrick.hughes@animalshelter.com | Patrick    | Hughes    | 1988-10-11 | 660 Spruce     | California | La Mirada             | 90638    |
| Bailey | Dog     | Ginger        | 36438bc9-e225-4038-97b2-1e28fd287957 | NULL           | F      | 2014-09-28 | Bicolor       | 2018-10-01     | Bailey | Dog     | wayne.turner@icloud.com          | 2019-07-26    | 50           | wayne.turner@icloud.com          | Wayne      | Turner    | 1966-02-18 | 350 Washington | California | Inglewood             | 90309    |
| Baloo  | Rabbit  | White         | f5ce3a02-1ec7-431d-8a76-09369e8d798b | English Lop    | M      | 2015-04-27 | Broken        | 2016-08-21     | Baloo  | Rabbit  | jesse.cox@yahoo.com              | 2017-12-16    | 58           | jesse.cox@yahoo.com              | Jesse      | Cox       | 1990-07-26 | 544 North      | California | South Gate            | 90280    |
| Beau   | Dog     | Cream         | 4b94a68c-0c97-4f70-9275-35b3a9eee8d9 | NULL           | M      | 2016-02-09 | Solid         | 2017-05-24     | Beau   | Dog     | shirley.williams@outlook.com     | 2018-04-15    | 90           | shirley.williams@outlook.com     | Shirley    | Williams  | 1966-08-17 | 11 Lincoln     | California | Santa Monica          | 90408    |
| Benji  | Dog     | Gray          | 646f0a76-14e4-42e7-9554-3af1ea6cc78f | English setter | M      | 2012-05-21 | Bicolor       | 2018-10-02     | Benji  | Dog     | sharon.davis@animalshelter.com   | 2018-11-18    | 97           | sharon.davis@animalshelter.com   | Sharon     | Davis     | 1988-09-25 | 372 Seventh    | California | Los Angeles           | 90068    |
| Brody  | Dog     | Black         | eb517826-e48a-41ae-a5fb-1bbeca23c05d | Schnauzer      | M      | 2007-08-23 | Tricolor      | 2018-12-05     | Brody  | Dog     | george.scott@hotmail.com         | 2019-02-21    | 83           | george.scott@hotmail.com         | George     | Scott     | 1982-05-03 | 424 Cedar      | California | Los Angeles           | 90004    |
| Brutus | Dog     | Ginger        | b7fad096-7cd1-42a7-85d6-0c3e6599dbeb | Weimaraner     | M      | 2011-04-04 | Bicolor       | 2018-08-03     | Brutus | Dog     | virginia.baker@gmail.com         | 2019-01-28    | 66           | virginia.baker@gmail.com         | Virginia   | Baker     | 1990-11-25 | 6 Jefferson    | California | Santa Monica          | 90410    |
| Buddy  | Cat     | White         | 6d49b3f6-e075-4f33-97a3-1d4878ee1345 | NULL           | M      | 2017-01-26 | Tortoiseshell | 2018-12-20     | Buddy  | Cat     | karen.smith@icloud.com           | 2019-09-27    | 73           | karen.smith@icloud.com           | Karen      | Smith     | 1948-03-01 | 110 North      | California | West Rancho Dominguez | 90220    |
| Callie | Dog     | Cream         | 2636f17f-5893-482f-94a7-47eeb715047a | English setter | F      | 2003-08-28 | Solid         | 2017-12-19     | Callie | Dog     | peter.smith@hotmail.com          | 2018-09-06    | 57           | peter.smith@hotmail.com          | Peter      | Smith     | 1986-08-27 | 56 Main        | California | Los Angeles           | 90004    |
| Chico  | Dog     | Brown         | c6614119-945a-45a9-a5a2-3c8f840edc01 | NULL           | M      | 2014-03-20 | Tuxedo        | 2019-03-22     | Chico  | Dog     | lori.smith@icloud.com            | 2019-12-29    | 86           | lori.smith@icloud.com            | Lori       | Smith     | 1977-02-11 | 324 Sixth      | California | Signal Hill           | 90755    |
| Chubby | Rabbit  | Ginger        | 561fea02-9c12-43b1-9ea8-071c9eae4c55 | NULL           | M      | 2013-02-07 | Broken        | 2017-10-31     | Chubby | Rabbit  | adam.brown@gmail.com             | 2018-05-27    | 65           | adam.brown@gmail.com             | Adam       | Brown     | 1984-12-22 | 41 Hill        | California | Norwalk               | 90650    |
| Cleo   | Cat     | Black         | 0897655b-1486-4d5d-ad60-03a855afcaf3 | NULL           | F      | 2015-08-13 | Tortoiseshell | 2019-09-06     | Cleo   | Cat     | melissa.lopez@gmail.com          | 2019-12-15    | 56           | melissa.lopez@gmail.com          | Melissa    | Lopez     | NULL       | 43 Park        | California | Bell Gardens          | 90202    |
| Cooper | Dog     | Black         | 14f9e97b-6cd4-4ee4-9798-1c4f2376141b | NULL           | M      | 2009-11-15 | Tricolor      | 2017-01-15     | Cooper | Dog     | lisa.perez@icloud.com            | 2018-01-10    | 61           | lisa.perez@icloud.com            | Lisa       | Perez     | 1949-08-08 | 502 River      | California | Hawthorne             | 90310    |
| Cosmo  | Cat     | Cream         | 2754b9c9-5df4-4206-818d-21bdd1a093ed | NULL           | M      | 2017-11-09 | Solid         | 2019-05-13     | Cosmo  | Cat     | diane.thompson@hotmail.com       | 2019-06-16    | 100          | diane.thompson@hotmail.com       | Diane      | Thompson  | 1998-06-25 | 762 Church     | California | Willowbrook           | 90059    |
| Dolly  | Dog     | Gray          | dbdc4f81-1709-49d6-9f73-1d2099eca35c | NULL           | F      | 2013-09-29 | Bicolor       | 2018-04-27     | Dolly  | Dog     | laura.young@gmail.com            | 2019-12-30    | 93           | laura.young@gmail.com            | Laura      | Young     | 1987-05-19 | 29 First       | California | Torrance              | 90503    |
| Emma   | Dog     | Black         | bac4c56d-ebb6-43e3-86f3-36506e17f74d | Schnauzer      | F      | 2006-12-26 | Tricolor      | 2019-03-28     | Emma   | Dog     | melissa.moore@icloud.com         | 2019-12-28    | 76           | melissa.moore@icloud.com         | Melissa    | Moore     | 1960-06-27 | 156 Park       | California | Bell Gardens          | 90202    |
| Fiona  | Cat     | Gray          | 90226140-f54e-419d-82e5-0ea81e0e6384 | NULL           | F      | 1999-05-23 | Calico        | 2017-01-13     | Fiona  | Cat     | jerry.mitchell@icloud.com        | 2018-02-23    | 96           | jerry.mitchell@icloud.com        | Jerry      | Mitchell  | 1981-09-22 | 732 Johnson    | California | South Whittier        | 90605    |
| George | Cat     | Brown         | 6fefc95e-7d46-4e25-b90a-0ba75f45d972 | NULL           | M      | 2001-10-04 | Bicolor       | 2017-11-24     | George | Cat     | kevin.diaz@hotmail.com           | 2018-09-13    | 97           | kevin.diaz@hotmail.com           | Kevin      | Diaz      | 1974-01-18 | 262 Jackson    | California | Torrance              | 90509    |
| Ginger | Dog     | Ginger        | 9e241a82-ad77-49dc-ad15-0ac8d2e89dde | NULL           | F      | 2015-11-17 | Bicolor       | 2016-11-27     | Ginger | Dog     | julie.adams@gmail.com            | 2017-03-07    | 79           | julie.adams@gmail.com            | Julie      | Adams     | 1957-01-31 | 133 Hill       | California | Gardena               | 90247    |
| Gizmo  | Dog     | Brown         | 78556795-4748-447f-a2ce-336b01173a18 | NULL           | M      | 2006-01-23 | Tuxedo        | 2019-08-14     | Gizmo  | Dog     | lori.smith@icloud.com            | 2019-12-26    | 54           | lori.smith@icloud.com            | Lori       | Smith     | 1977-02-11 | 324 Sixth      | California | Signal Hill           | 90755    |
| Gracie | Cat     | Black         | 66691184-06b1-4aa8-89b3-0def5fd9fbe1 | NULL           | F      | 2007-11-20 | Spotted       | 2017-05-21     | Gracie | Cat     | gerald.reyes@animalshelter.com   | 2017-09-09    | 82           | gerald.reyes@animalshelter.com   | Gerald     | Reyes     | 1956-02-10 | 761 Eighth     | California | Long Beach            | 90853    |

<BR>

```sql
SELECT  * FROM
    animals AS A
    LEFT OUTER JOIN adoptions AS AD
        ON AD.name=A.name AND AD.species = A.species
    LEFT OUTER JOIN persons AS P
        ON P.email = AD.adopter_email;
```

| name   | species | primary_color | implant_chip_id                      | breed          | gender | birth_date | pattern       | admission_date | name   | species | adopter_email                    | adoption_date | adoption_fee | email                            | first_name | last_name | birth_date | address        | state      | city                  | zip_code |
| :----- | :------ | :------------ | :----------------------------------- | :------------- | :----- | :--------- | :------------ | :------------- | :----- | :------ | :------------------------------- | :------------ | :----------- | :------------------------------- | :--------- | :-------- | :--------- | :------------- | :--------- | :-------------------- | :------- |
| Abby   | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL           | F      | 1999-02-19 | Tricolor      | 2016-07-19     | Abby   | Dog     | patrick.hughes@animalshelter.com | 2018-08-30    | 58           | patrick.hughes@animalshelter.com | Patrick    | Hughes    | 1988-10-11 | 660 Spruce     | California | La Mirada             | 90638    |
| Ace    | Dog     | Ginger        | 33d50c6b-9d2e-4eb1-8171-0466dee4f349 | NULL           | M      | 2005-12-19 | Bicolor       | 2019-06-25     | Ace    | Dog     | justin.ruiz@hotmail.com          | 2019-10-26    | 68           | justin.ruiz@hotmail.com          | Justin     | Ruiz      | 1991-07-13 | 157 Church     | California | Gardena               | 90247    |
| Archie | Cat     | Ginger        | 970d7094-ab66-4dca-a0d1-0c16264989af | Persian        | M      | 2009-08-26 | Tricolor      | 2016-07-10     | Archie | Cat     | patrick.hughes@animalshelter.com | 2018-08-30    | 82           | patrick.hughes@animalshelter.com | Patrick    | Hughes    | 1988-10-11 | 660 Spruce     | California | La Mirada             | 90638    |
| Bailey | Dog     | Ginger        | 36438bc9-e225-4038-97b2-1e28fd287957 | NULL           | F      | 2014-09-28 | Bicolor       | 2018-10-01     | Bailey | Dog     | wayne.turner@icloud.com          | 2019-07-26    | 50           | wayne.turner@icloud.com          | Wayne      | Turner    | 1966-02-18 | 350 Washington | California | Inglewood             | 90309    |
| Baloo  | Rabbit  | White         | f5ce3a02-1ec7-431d-8a76-09369e8d798b | English Lop    | M      | 2015-04-27 | Broken        | 2016-08-21     | Baloo  | Rabbit  | jesse.cox@yahoo.com              | 2017-12-16    | 58           | jesse.cox@yahoo.com              | Jesse      | Cox       | 1990-07-26 | 544 North      | California | South Gate            | 90280    |
| Beau   | Dog     | Cream         | 4b94a68c-0c97-4f70-9275-35b3a9eee8d9 | NULL           | M      | 2016-02-09 | Solid         | 2017-05-24     | Beau   | Dog     | shirley.williams@outlook.com     | 2018-04-15    | 90           | shirley.williams@outlook.com     | Shirley    | Williams  | 1966-08-17 | 11 Lincoln     | California | Santa Monica          | 90408    |
| Benji  | Dog     | Gray          | 646f0a76-14e4-42e7-9554-3af1ea6cc78f | English setter | M      | 2012-05-21 | Bicolor       | 2018-10-02     | Benji  | Dog     | sharon.davis@animalshelter.com   | 2018-11-18    | 97           | sharon.davis@animalshelter.com   | Sharon     | Davis     | 1988-09-25 | 372 Seventh    | California | Los Angeles           | 90068    |
| Brody  | Dog     | Black         | eb517826-e48a-41ae-a5fb-1bbeca23c05d | Schnauzer      | M      | 2007-08-23 | Tricolor      | 2018-12-05     | Brody  | Dog     | george.scott@hotmail.com         | 2019-02-21    | 83           | george.scott@hotmail.com         | George     | Scott     | 1982-05-03 | 424 Cedar      | California | Los Angeles           | 90004    |
| Brutus | Dog     | Ginger        | b7fad096-7cd1-42a7-85d6-0c3e6599dbeb | Weimaraner     | M      | 2011-04-04 | Bicolor       | 2018-08-03     | Brutus | Dog     | virginia.baker@gmail.com         | 2019-01-28    | 66           | virginia.baker@gmail.com         | Virginia   | Baker     | 1990-11-25 | 6 Jefferson    | California | Santa Monica          | 90410    |
| Buddy  | Cat     | White         | 6d49b3f6-e075-4f33-97a3-1d4878ee1345 | NULL           | M      | 2017-01-26 | Tortoiseshell | 2018-12-20     | Buddy  | Cat     | karen.smith@icloud.com           | 2019-09-27    | 73           | karen.smith@icloud.com           | Karen      | Smith     | 1948-03-01 | 110 North      | California | West Rancho Dominguez | 90220    |
| Callie | Dog     | Cream         | 2636f17f-5893-482f-94a7-47eeb715047a | English setter | F      | 2003-08-28 | Solid         | 2017-12-19     | Callie | Dog     | peter.smith@hotmail.com          | 2018-09-06    | 57           | peter.smith@hotmail.com          | Peter      | Smith     | 1986-08-27 | 56 Main        | California | Los Angeles           | 90004    |
| Chico  | Dog     | Brown         | c6614119-945a-45a9-a5a2-3c8f840edc01 | NULL           | M      | 2014-03-20 | Tuxedo        | 2019-03-22     | Chico  | Dog     | lori.smith@icloud.com            | 2019-12-29    | 86           | lori.smith@icloud.com            | Lori       | Smith     | 1977-02-11 | 324 Sixth      | California | Signal Hill           | 90755    |
| Chubby | Rabbit  | Ginger        | 561fea02-9c12-43b1-9ea8-071c9eae4c55 | NULL           | M      | 2013-02-07 | Broken        | 2017-10-31     | Chubby | Rabbit  | adam.brown@gmail.com             | 2018-05-27    | 65           | adam.brown@gmail.com             | Adam       | Brown     | 1984-12-22 | 41 Hill        | California | Norwalk               | 90650    |
| Cleo   | Cat     | Black         | 0897655b-1486-4d5d-ad60-03a855afcaf3 | NULL           | F      | 2015-08-13 | Tortoiseshell | 2019-09-06     | Cleo   | Cat     | melissa.lopez@gmail.com          | 2019-12-15    | 56           | melissa.lopez@gmail.com          | Melissa    | Lopez     | NULL       | 43 Park        | California | Bell Gardens          | 90202    |
| Cooper | Dog     | Black         | 14f9e97b-6cd4-4ee4-9798-1c4f2376141b | NULL           | M      | 2009-11-15 | Tricolor      | 2017-01-15     | Cooper | Dog     | lisa.perez@icloud.com            | 2018-01-10    | 61           | lisa.perez@icloud.com            | Lisa       | Perez     | 1949-08-08 | 502 River      | California | Hawthorne             | 90310    |
| Cosmo  | Cat     | Cream         | 2754b9c9-5df4-4206-818d-21bdd1a093ed | NULL           | M      | 2017-11-09 | Solid         | 2019-05-13     | Cosmo  | Cat     | diane.thompson@hotmail.com       | 2019-06-16    | 100          | diane.thompson@hotmail.com       | Diane      | Thompson  | 1998-06-25 | 762 Church     | California | Willowbrook           | 90059    |
| Dolly  | Dog     | Gray          | dbdc4f81-1709-49d6-9f73-1d2099eca35c | NULL           | F      | 2013-09-29 | Bicolor       | 2018-04-27     | Dolly  | Dog     | laura.young@gmail.com            | 2019-12-30    | 93           | laura.young@gmail.com            | Laura      | Young     | 1987-05-19 | 29 First       | California | Torrance              | 90503    |
| Emma   | Dog     | Black         | bac4c56d-ebb6-43e3-86f3-36506e17f74d | Schnauzer      | F      | 2006-12-26 | Tricolor      | 2019-03-28     | Emma   | Dog     | melissa.moore@icloud.com         | 2019-12-28    | 76           | melissa.moore@icloud.com         | Melissa    | Moore     | 1960-06-27 | 156 Park       | California | Bell Gardens          | 90202    |
| Fiona  | Cat     | Gray          | 90226140-f54e-419d-82e5-0ea81e0e6384 | NULL           | F      | 1999-05-23 | Calico        | 2017-01-13     | Fiona  | Cat     | jerry.mitchell@icloud.com        | 2018-02-23    | 96           | jerry.mitchell@icloud.com        | Jerry      | Mitchell  | 1981-09-22 | 732 Johnson    | California | South Whittier        | 90605    |
| George | Cat     | Brown         | 6fefc95e-7d46-4e25-b90a-0ba75f45d972 | NULL           | M      | 2001-10-04 | Bicolor       | 2017-11-24     | George | Cat     | kevin.diaz@hotmail.com           | 2018-09-13    | 97           | kevin.diaz@hotmail.com           | Kevin      | Diaz      | 1974-01-18 | 262 Jackson    | California | Torrance              | 90509    |
| Ginger | Dog     | Ginger        | 9e241a82-ad77-49dc-ad15-0ac8d2e89dde | NULL           | F      | 2015-11-17 | Bicolor       | 2016-11-27     | Ginger | Dog     | julie.adams@gmail.com            | 2017-03-07    | 79           | julie.adams@gmail.com            | Julie      | Adams     | 1957-01-31 | 133 Hill       | California | Gardena               | 90247    |
| Gizmo  | Dog     | Brown         | 78556795-4748-447f-a2ce-336b01173a18 | NULL           | M      | 2006-01-23 | Tuxedo        | 2019-08-14     | Gizmo  | Dog     | lori.smith@icloud.com            | 2019-12-26    | 54           | lori.smith@icloud.com            | Lori       | Smith     | 1977-02-11 | 324 Sixth      | California | Signal Hill           | 90755    |
| Gracie | Cat     | Black         | 66691184-06b1-4aa8-89b3-0def5fd9fbe1 | NULL           | F      | 2007-11-20 | Spotted       | 2017-05-21     | Gracie | Cat     | gerald.reyes@animalshelter.com   | 2017-09-09    | 82           | gerald.reyes@animalshelter.com   | Gerald     | Reyes     | 1956-02-10 | 761 Eighth     | California | Long Beach            | 90853    |

<br>

```sql
    (A
        INNER JOIN
        (B
            INNER JOIN
            (C
                INNER JOIN
                D
                ON D.Z = C.Z)
            ON C.Y = B.Y)
        ON A.X = B.X)
```