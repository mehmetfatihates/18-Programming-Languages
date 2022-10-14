```SQL
SELECT species,COUNT(*)
FROM animals AS A
GROUP BY 1
ORDER BY 2
```

| species | count |
| :------ | :---- |
| Rabbit  | 10    |
| Cat     | 30    |
| Dog     | 60    |

<BR>
 
```SQL
SELECT * 
FROM  animals
ORDER BY species,breed,name
```

| name       | species | primary_color | implant_chip_id                      | breed            | gender | birth_date | pattern       | admission_date |
| :--------- | :------ | :------------ | :----------------------------------- | :--------------- | :----- | :--------- | :------------ | :------------- |
| Pearl      | Cat     | Brown         | df9291b5-9f82-4ad1-a9fd-1206fd6cd837 | American Bobtail | F      | 2012-07-05 | Tricolor      | 2019-04-09     |
| Miss Kitty | Cat     | Black         | 1ab8347c-6349-4092-9667-09653a9fd09c | Maine Coon       | F      | 2016-09-19 | Bicolor       | 2019-10-19     |
| Archie     | Cat     | Ginger        | 970d7094-ab66-4dca-a0d1-0c16264989af | Persian          | M      | 2009-08-26 | Tricolor      | 2016-07-10     |
| Pumpkin    | Cat     | Gray          | 64085fe7-0f2e-4e80-a170-286f1519fda8 | Russian Blue     | M      | 2002-12-28 | Spotted       | 2019-01-18     |
| Penelope   | Cat     | Brown         | 5a6a4dc1-b813-4331-b027-1718eb50bc9e | Scottish Fold    | F      | 2000-09-21 | Tabby         | 2017-07-12     |
| Misty      | Cat     | Ginger        | 805281a0-5de6-4ba8-8fb1-11cefe0575e0 | Siamese          | F      | 2009-02-21 | Spotted       | 2019-06-06     |
| Nova       | Cat     | White         | 81802526-cae2-40bb-846a-01d2156545b4 | Sphynx           | F      | 2011-04-07 | Tortoiseshell | 2017-12-09     |
| Salem      | Cat     | Ginger        | 59f3aa7b-4d2b-49f6-9964-0155880b0473 | Sphynx           | M      | 2011-02-26 | Spotted       | 2017-10-29     |
| Ivy        | Cat     | Brown         | 0955c70b-a2b6-4d78-8e4b-1f6386ffc763 | Turkish Angora   | F      | 2013-05-13 | Spotted       | 2018-05-20     |
| Tigger     | Cat     | Brown         | 6f39f088-a2ea-40fc-9f7e-0dea387a5b59 | Turkish Angora   | M      | 2005-06-07 | Tabby         | 2016-01-18     |
| Buddy      | Cat     | White         | 6d49b3f6-e075-4f33-97a3-1d4878ee1345 | NULL             | M      | 2017-01-26 | Tortoiseshell | 2018-12-20     |
| Charlie    | Cat     | Gray          | ab967364-43cc-4dd2-a4d9-080f0def56ca | NULL             | M      | 2016-06-16 | Calico        | 2018-02-16     |
| Cleo       | Cat     | Black         | 0897655b-1486-4d5d-ad60-03a855afcaf3 | NULL             | F      | 2015-08-13 | Tortoiseshell | 2019-09-06     |
| Cosmo      | Cat     | Cream         | 2754b9c9-5df4-4206-818d-21bdd1a093ed | NULL             | M      | 2017-11-09 | Solid         | 2019-05-13     |
| Fiona      | Cat     | Gray          | 90226140-f54e-419d-82e5-0ea81e0e6384 | NULL             | F      | 1999-05-23 | Calico        | 2017-01-13     |
| George     | Cat     | Brown         | 6fefc95e-7d46-4e25-b90a-0ba75f45d972 | NULL             | M      | 2001-10-04 | Bicolor       | 2017-11-24     |
| Gracie     | Cat     | Black         | 66691184-06b1-4aa8-89b3-0def5fd9fbe1 | NULL             | F      | 2007-11-20 | Spotted       | 2017-05-21     |
| Hobbes     | Cat     | Gray          | 8788e7b9-dc20-45ef-8778-0066f60d790d | NULL             | M      | 2002-01-01 | Spotted       | 2016-07-29     |

<br>

```SQL
SELECT adoption_date,species,name
FROM adoptions
ORDER BY adoption_date DESC
```

| adoption_date | species | name       |
| :------------ | :------ | :--------- |
| 2019-12-30    | Dog     | Dolly      |
| 2019-12-29    | Dog     | Chico      |
| 2019-12-28    | Dog     | Emma       |
| 2019-12-26    | Dog     | Gizmo      |
| 2019-12-24    | Rabbit  | Hudini     |
| 2019-12-15    | Cat     | Cleo       |
| 2019-12-13    | Cat     | Misty      |
| 2019-12-01    | Cat     | Kiki       |
| 2019-11-26    | Rabbit  | Toby       |
| 2019-11-21    | Cat     | Rocky      |
| 2019-11-12    | Dog     | Jake       |
| 2019-11-11    | Cat     | Miss Kitty |
| 2019-10-26    | Dog     | Ace        |
| 2019-10-13    | Cat     | Pearl      |
| 2019-09-30    | Dog     | Riley      |
| 2019-09-27    | Cat     | Buddy      |
| 2019-09-12    | Cat     | Pumpkin    |
| 2019-09-01    | Dog     | Lily       |
| 2019-08-07    | Dog     | Roxy       |
| 2019-08-02    | Dog     | Otis       |

<BR>

```SQL
SELECT DISTINCT species,name
FROM adoptions
ORDER BY adoption_date DESC
```

# ERROR

```SQL
SELECT *
FROM animals
ORDER BY species;
```

| name       | species | primary_color | implant_chip_id                      | breed            | gender | birth_date | pattern       | admission_date |
| :--------- | :------ | :------------ | :----------------------------------- | :--------------- | :----- | :--------- | :------------ | :------------- |
| Gracie     | Cat     | Black         | 66691184-06b1-4aa8-89b3-0def5fd9fbe1 | NULL             | F      | 2007-11-20 | Spotted       | 2017-05-21     |
| Salem      | Cat     | Ginger        | 59f3aa7b-4d2b-49f6-9964-0155880b0473 | Sphynx           | M      | 2011-02-26 | Spotted       | 2017-10-29     |
| Stanley    | Cat     | Cream         | 44b218ef-c708-46b7-967e-16c16e4ad577 | NULL             | M      | 2005-01-19 | Tabby         | 2019-11-26     |
| Hobbes     | Cat     | Gray          | 8788e7b9-dc20-45ef-8778-0066f60d790d | NULL             | M      | 2002-01-01 | Spotted       | 2016-07-29     |
| Cleo       | Cat     | Black         | 0897655b-1486-4d5d-ad60-03a855afcaf3 | NULL             | F      | 2015-08-13 | Tortoiseshell | 2019-09-06     |
| Simon      | Cat     | Gray          | 39ed8368-b8bc-433e-8678-0199bce6259e | NULL             | M      | 2008-07-19 | Bicolor       | 2017-10-23     |
| Miss Kitty | Cat     | Black         | 1ab8347c-6349-4092-9667-09653a9fd09c | Maine Coon       | F      | 2016-09-19 | Bicolor       | 2019-10-19     |
| Misty      | Cat     | Ginger        | 805281a0-5de6-4ba8-8fb1-11cefe0575e0 | Siamese          | F      | 2009-02-21 | Spotted       | 2019-06-06     |
| Sam        | Cat     | Gray          | 27f6f2b4-3570-43e1-8b64-05a1dc86fd8d | NULL             | M      | 2016-09-18 | Bicolor       | 2018-10-09     |
| Ivy        | Cat     | Brown         | 0955c70b-a2b6-4d78-8e4b-1f6386ffc763 | Turkish Angora   | F      | 2013-05-13 | Spotted       | 2018-05-20     |
| Nova       | Cat     | White         | 81802526-cae2-40bb-846a-01d2156545b4 | Sphynx           | F      | 2011-04-07 | Tortoiseshell | 2017-12-09     |
| Tigger     | Cat     | Brown         | 6f39f088-a2ea-40fc-9f7e-0dea387a5b59 | Turkish Angora   | M      | 2005-06-07 | Tabby         | 2016-01-18     |
| Oscar      | Cat     | White         | 18c0c340-e7a3-430e-baf5-13c938287d4f | NULL             | M      | 2008-06-08 | Bicolor       | 2018-02-23     |
| Cosmo      | Cat     | Cream         | 2754b9c9-5df4-4206-818d-21bdd1a093ed | NULL             | M      | 2017-11-09 | Solid         | 2019-05-13     |
| Patches    | Cat     | Gray          | 21247670-2e5a-43ef-acf9-0e794463c466 | NULL             | F      | 2014-07-29 | Bicolor       | 2018-11-04     |
| Sadie      | Cat     | Gray          | c231514d-61c1-4180-b679-0bdba7314fd6 | NULL             | F      | 2016-08-24 | Bicolor       | 2016-09-19     |
| Pearl      | Cat     | Brown         | df9291b5-9f82-4ad1-a9fd-1206fd6cd837 | American Bobtail | F      | 2012-07-05 | Tricolor      | 2019-04-09     |
| Penelope   | Cat     | Brown         | 5a6a4dc1-b813-4331-b027-1718eb50bc9e | Scottish Fold    | F      | 2000-09-21 | Tabby         | 2017-07-12     |
| Kiki       | Cat     | Cream         | 4e029101-2326-461c-8ff7-0eb809f110cb | NULL             | F      | 2015-07-07 | Tricolor      | 2019-11-16     |
| Penny      | Cat     | Cream         | b947b10b-c402-4da5-9713-185fd21065c4 | NULL             | F      | 2005-11-02 | Tricolor      | 2017-02-15     |
| Archie     | Cat     | Ginger        | 970d7094-ab66-4dca-a0d1-0c16264989af | Persian          | M      | 2009-08-26 | Tricolor      | 2016-07-10     |

<BR>
