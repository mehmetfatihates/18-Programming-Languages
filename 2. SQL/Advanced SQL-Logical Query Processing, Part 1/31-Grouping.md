```sql
SELECT COUNT(*) AS count
    FROM adaptions;
```

| count |
| :---- |
| 70    |

<br>

```sql
SELECT  species, COUNT(*) AS count
FROM vaccinations
GROUP BY species
```

| species | count |
| :------ | :---- |
| Rabbit  | 10    |
| Cat     | 28    |
| Dog     | 57    |

<br>

```sql
SELECT  species, COUNT(*) AS count
FROM vaccinations
GROUP BY name,species
```

| species | count |
| :------ | :---- |
| Rabbit  | 1     |
| Cat     | 1     |
| Cat     | 3     |
| Cat     | 1     |
| Dog     | 1     |
| Dog     | 1     |
| Dog     | 3     |
| Dog     | 2     |
| Dog     | 5     |
| Cat     | 1     |
| Cat     | 1     |
| Dog     | 3     |
| Cat     | 2     |
| Cat     | 2     |
| Dog     | 1     |
| Dog     | 1     |
| Dog     | 1     |
| Dog     | 1     |
| Dog     | 1     |
| Dog     | 1     |
| Dog     | 2     |
| Dog     | 2     |

<br>
