### Show animals and their most recent vaccination

```sql
SELECT A.name, A.species, A.primary_color, A.breed, last_vaccinations.*
FROM animals AS A
      CROSS JOIN LATERAL
      ( SELECT V.vaccine, V.vaccination_time
        FROM vaccinations AS V
        WHERE V.name = A.name
            AND
            V.species = A.species
        ORDER BY V.vaccination_time DESC
        LIMIT 3 OFFSET 0
    ) AS last_vaccinations
```

| name    | species | primary_color | breed       | vaccine             | vaccination_time           |
| :------ | :------ | :------------ | :---------- | :------------------ | :------------------------- |
| Abby    | Dog     | Black         | NULL        | Distemper Virus     | 2018-04-19 10:44:00.000000 |
| Abby    | Dog     | Black         | NULL        | Distemper Virus     | 2017-04-19 09:01:00.000000 |
| Angel   | Dog     | Brown         | NULL        | Rabies              | 2018-05-04 11:18:00.000000 |
| Angel   | Dog     | Brown         | NULL        | Distemper Virus     | 2018-05-04 09:47:00.000000 |
| Angel   | Dog     | Brown         | NULL        | Rabies              | 2017-05-04 12:49:00.000000 |
| Archie  | Cat     | Ginger        | Persian     | Panleukopenia Virus | 2017-11-20 13:25:00.000000 |
| Archie  | Cat     | Ginger        | Persian     | Calicivirus         | 2017-11-20 09:35:00.000000 |
| Aspen   | Dog     | Brown         | NULL        | Adenovirus          | 2017-09-29 12:35:00.000000 |
| Aspen   | Dog     | Brown         | NULL        | Rabies              | 2017-09-29 07:32:00.000000 |
| Aspen   | Dog     | Brown         | NULL        | Distemper Virus     | 2016-09-28 10:01:00.000000 |
| Baloo   | Rabbit  | White         | English Lop | Rabies              | 2016-09-01 07:00:00.000000 |
| Benny   | Dog     | Brown         | NULL        | Rabies              | 2019-01-02 13:19:00.000000 |
| Benny   | Dog     | Brown         | NULL        | Adenovirus          | 2019-01-02 09:44:00.000000 |
| Bon bon | Rabbit  | Gray          | NULL        | Myxomatosis         | 2019-12-27 13:32:00.000000 |
| Bon bon | Rabbit  | Gray          | NULL        | Rabies              | 2019-12-27 09:23:00.000000 |
| Bon bon | Rabbit  | Gray          | NULL        | Myxomatosis         | 2018-12-27 13:39:00.000000 |
| Boomer  | Dog     | Black         | Schnauzer   | Rabies              | 2019-09-03 11:58:00.000000 |
| Brutus  | Dog     | Ginger        | Weimaraner  | Adenovirus          | 2018-11-28 12:26:00.000000 |

# Find purebred candidates of the same species and breed

```sql
SELECT A1.species, A1.breed AS breed, A1.name AS male, A2.name AS female
FROM animals AS A1
        INNER JOIN
        animals AS A2
        ON A1.species = A2.species
            AND
            A1.breed = A2.breed
            AND
            A1.name <> A2.name
            AND
            A1.gender > A2.gender
ORDER BY A1.species, A1.breed;
```

| species | breed          | male    | female   |
| :------ | :------------- | :------ | :------- |
| Cat     | Sphynx         | Salem   | Nova     |
| Cat     | Turkish Angora | Tigger  | Ivy      |
| Dog     | Bullmastiff    | Jake    | Penelope |
| Dog     | Bullmastiff    | Jake    | Skye     |
| Dog     | Bullmastiff    | Toby    | Penelope |
| Dog     | Bullmastiff    | Toby    | Skye     |
| Dog     | English setter | Gus     | Callie   |
| Dog     | English setter | Benji   | Callie   |
| Dog     | English setter | Frankie | Nala     |
| Dog     | English setter | Frankie | Callie   |
| Dog     | English setter | Gus     | Nala     |
| Dog     | English setter | Benji   | Nala     |
| Dog     | English setter | Mac     | Nala     |
| Dog     | English setter | Mac     | Callie   |
| Dog     | Schnauzer      | Boomer  | Lily     |
| Dog     | Schnauzer      | Brody   | Emma     |
| Dog     | Schnauzer      | Brody   | Lily     |
| Dog     | Schnauzer      | Boomer  | Emma     |
