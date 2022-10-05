### Find animals that were never adopted

```SQL
SELECT DISTINCT AN.name, AN.species
FROM animals AS AN
        LEFT OUTER JOIN
        adoptions AS AD on AD.name = AN.name AND AD.species = AN.species
WHERE AD.name IS NULL;
```

| name    | species |
| :------ | :------ |
| Patches | Cat     |
| Stella  | Dog     |
| Boomer  | Dog     |
| Odin    | Dog     |
| Sammy   | Dog     |
| Aspen   | Dog     |
| Simon   | Cat     |
| Lulu    | Cat     |
| Ivy     | Cat     |
| Frankie | Dog     |
| April   | Rabbit  |
| Shelby  | Dog     |
| Kona    | Dog     |
| Toby    | Cat     |
| Benny   | Dog     |
| Thor    | Dog     |
| Stanley | Cat     |
| Charlie | Cat     |

<BR>

```SQL
SELECT name,species
FROM animals AS AN
WHERE NOT EXISTS (
                    SELECT NULL
                    FROM adoptions AS AD
                    WHERE AD.name = AN.name
                            AND
                          AD.species = AN.species
);
```

| name    | species |
| :------ | :------ |
| Angel   | Dog     |
| April   | Rabbit  |
| Arya    | Dog     |
| Aspen   | Dog     |
| Benny   | Dog     |
| Blue    | Dog     |
| Bon bon | Rabbit  |
| Boomer  | Dog     |
| Charlie | Cat     |
| Frankie | Dog     |
| Holly   | Dog     |
| Ivy     | Cat     |
| Kona    | Dog     |
| Layla   | Dog     |
| Lulu    | Cat     |
| Luna    | Dog     |
| Odin    | Dog     |
| Patches | Cat     |

<BR>

### This query returns all animals except those that were adopted.

```sql
SELECT name,species
FROM animals
EXCEPT
SELECT name,species
FROM adoptions;
```

| name    | species |
| :------ | :------ |
| Boomer  | Dog     |
| Sammy   | Dog     |
| Simon   | Cat     |
| Lulu    | Cat     |
| Shelby  | Dog     |
| Toby    | Cat     |
| Benny   | Dog     |
| Thor    | Dog     |
| Stanley | Cat     |
| Tigger  | Cat     |
| Samson  | Dog     |
| Bon bon | Rabbit  |
| Luna    | Dog     |
| Arya    | Dog     |
| Patches | Cat     |
| Stella  | Dog     |
| Odin    | Dog     |
| Aspen   | Dog     |

<br>

## Showing which breeds were never adopted

```SQL
SELECT species, breed
FROM animals
EXCEPT
SELECT AN.species, AN.breed
FROM animals AS AN
    INNER JOIN
    adoptions AS AD
    ON
    AN.species = AD.species AND AN.name = AD.name;
```

| species | breed          |
| :------ | :------------- |
| Cat     | Turkish Angora |
