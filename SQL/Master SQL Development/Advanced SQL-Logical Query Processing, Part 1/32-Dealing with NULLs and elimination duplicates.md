```sql
SELECT  species,breed, COUNT(*) AS number_of_animals
FROM animals
GROUP BY species, breed
```

| species | breed            | number_of_animals |
| :------ | :--------------- | :---------------- |
| Rabbit  | Belgian Hare     | 1                 |
| Dog     | Schnauzer        | 4                 |
| Rabbit  | Lionhead         | 1                 |
| Cat     | Sphynx           | 2                 |
| Rabbit  | NULL             | 7                 |
| Dog     | NULL             | 41                |
| Cat     | Siamese          | 1                 |
| Cat     | Turkish Angora   | 2                 |
| Cat     | Maine Coon       | 1                 |
| Dog     | English setter   | 6                 |
| Dog     | Bullmastiff      | 4                 |
| Dog     | Weimaraner       | 5                 |
| Cat     | American Bobtail | 1                 |
| Cat     | NULL             | 20                |
| Cat     | Scottish Fold    | 1                 |
| Cat     | Russian Blue     | 1                 |
| Rabbit  | English Lop      | 1                 |
| Cat     | Persian          | 1                 |

<br>

```sql
SELECT  DATE(birth_date) AS year_born,
    COUNT(*) AS number_of_persons
FROM persons
GROUP BY DATE(birth_date)
```

| year_born  | number_of_persons |
| :--------- | :---------------- |
| 1961-04-17 | 1                 |
| 1962-08-07 | 1                 |
| 1984-02-23 | 1                 |
| 1949-03-23 | 1                 |
| 1974-01-18 | 1                 |
| 1956-02-10 | 1                 |
| 1990-10-15 | 1                 |
| 1951-01-29 | 1                 |
| NULL       | 9                 |
| 1990-07-26 | 1                 |
| 1946-03-29 | 1                 |
| 1974-10-13 | 1                 |
| 1986-08-27 | 1                 |
| 1994-09-15 | 1                 |
| 1994-02-11 | 1                 |
| 1975-02-14 | 1                 |
| 1963-03-18 | 1                 |

<BR>

```sql
SELECT species,name, COUNT(*) AS num_vaccines
FROM vaccinations
GROUP BY species, name;
ORDER BY species, num_vaccins;
```

| species | name    | num_vaccines |
| :------ | :------ | :----------- |
| Dog     | Roxy    | 2            |
| Cat     | Thomas  | 2            |
| Dog     | Stella  | 1            |
| Cat     | Sam     | 1            |
| Cat     | Sadie   | 1            |
| Rabbit  | Baloo   | 1            |
| Dog     | Odin    | 3            |
| Cat     | Tigger  | 6            |
| Cat     | Archie  | 2            |
| Dog     | Thor    | 4            |
| Dog     | Shadow  | 1            |
| Cat     | Simon   | 1            |
| Dog     | Dolly   | 3            |
| Dog     | Jake    | 1            |
| Cat     | Hobbes  | 1            |
| Dog     | Holly   | 1            |
| Dog     | Walter  | 4            |
| Dog     | Angel   | 4            |
| Dog     | Poppy   | 1            |
| Rabbit  | Bon bon | 6            |
| Dog     | Sammy   | 2            |
| Dog     | Brutus  | 2            |

<br>

```sql
SELECT DISTINCT species,name, COUNT(*) AS num_vaccines
FROM vaccinations
GROUP BY species, name;
ORDER BY species, num_vaccins;
```

| species | name        | num_vaccines |
| :------ | :---------- | :----------- |
| Dog     | Shadow      | 1            |
| Cat     | Oscar       | 3            |
| Cat     | Archie      | 2            |
| Dog     | Odin        | 3            |
| Cat     | Simon       | 1            |
| Cat     | Fiona       | 2            |
| Dog     | Remi / Remy | 1            |
| Dog     | Nala        | 1            |
| Dog     | Ginger      | 1            |
| Dog     | Poppy       | 1            |
| Dog     | Boomer      | 1            |
| Dog     | Jake        | 1            |
| Dog     | Dolly       | 3            |
| Dog     | Samson      | 1            |
| Rabbit  | Humphrey    | 3            |
| Cat     | Pumpkin     | 2            |
| Cat     | Sam         | 1            |
| Cat     | Patches     | 1            |
| Dog     | Aspen       | 5            |
| Dog     | Stella      | 1            |
| Rabbit  | Baloo       | 1            |
| Dog     | Cooper      | 1            |
| Cat     | Misty       | 2            |
