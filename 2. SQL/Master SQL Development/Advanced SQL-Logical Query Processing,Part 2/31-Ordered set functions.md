```SQL
SELECT adoption_date, SUM(adoption_fee) AS total_fee
FROM adoptions
GROUP BY adoption_date
HAVING COUNT(*) > 1
```

| adoption_date | total_fee |
| :------------ | :-------- |
| 2019-07-26    | 127       |
| 2018-04-01    | 158       |
| 2018-08-30    | 140       |
| 2018-12-29    | 147       |

<BR>

```SQL
SELECT adoption_date,
       SUM(adoption_fee) AS total_fee,
       STRING_AGG(CONCAT(name, ' the ',species),', ')
FROM adoptions
GROUP BY adoption_date
HAVING COUNT(*) > 1
```

| adoption_date | total_fee | string_agg                   |
| :------------ | :-------- | :--------------------------- |
| 2019-07-26    | 127       | Bailey the Dog, Nala the Dog |
| 2018-04-01    | 158       | Jax the Dog, Shadow the Dog  |
| 2018-08-30    | 140       | Abby the Dog, Archie the Cat |
| 2018-12-29    | 147       | Gus the Dog, Sam the Cat     |

<BR>

```SQL
SELECT name,
       species,
       COUNT(*) AS number_of_vaccinations
FROM vaccinations
GROUP BY name,species
ORDER BY species, number_of_vaccinations DESC
```

| name     | species | number_of_vaccinations |
| :------- | :------ | :--------------------- |
| Tigger   | Cat     | 6                      |
| Oscar    | Cat     | 3                      |
| Nova     | Cat     | 2                      |
| Thomas   | Cat     | 2                      |
| Fiona    | Cat     | 2                      |
| Archie   | Cat     | 2                      |
| Penelope | Cat     | 2                      |
| Pumpkin  | Cat     | 2                      |
| Misty    | Cat     | 2                      |
| Patches  | Cat     | 1                      |
| Sadie    | Cat     | 1                      |
| Sam      | Cat     | 1                      |
| Hobbes   | Cat     | 1                      |
| Simon    | Cat     | 1                      |
| Aspen    | Dog     | 5                      |
| Thor     | Dog     | 4                      |
| Angel    | Dog     | 4                      |
| Walter   | Dog     | 4                      |

<BR>

```SQL
WITH vaccination_ranking AS
    (
        SELECT name,species, COUNT(*) AS num_v
        FROM vaccinations
        GROUP BY name, species
    )
SELECT species,MAX(num_v) AS max_v, MIN(num_v) AS min_v,
       CAST(AVG(num_v) AS DECIMAL(9,2)) AS avg_v
FROM vaccination_ranking
GROUP BY species
```

| species | max_v | min_v | avg_v |
| :------ | :---- | :---- | :---- |
| Cat     | 6     | 1     | 2.00  |
| Dog     | 5     | 1     | 1.97  |
| Rabbit  | 6     | 1     | 3.33  |

<BR>

```SQL
WITH vaccination_ranking AS
    (
        SELECT name,species, COUNT(*) AS num_v
        FROM vaccinations
        GROUP BY name, species
    )
SELECT species,MAX(num_v) AS max_v, MIN(num_v) AS min_v,
       CAST(AVG(num_v) AS DECIMAL(9,2)) AS avg_v,
       DENSE_RANK(5) WITHIN GROUP ( ORDER BY num_v DESC) AS how_would_x_rank,
       PERCENT_RANK(5) WITHIN GROUP ( ORDER BY num_v DESC) AS how_would_x_rank_percent,
       PERCENTILE_CONT(0) WITHIN GROUP ( ORDER BY num_v DESC) AS Inverse_Continous,
       PERCENTILE_DISC(0) WITHIN GROUP ( ORDER BY num_v DESC) AS Inverse_Discrete
FROM vaccination_ranking
GROUP BY species
```

| species | max_v | min_v | avg_v | how_would_x_rank | how_would_x_rank_percent | inverse_continous | inverse_discrete |
| :------ | :---- | :---- | :---- | :--------------- | :----------------------- | :---------------- | :--------------- |
| Cat     | 6     | 1     | 2.00  | 2                | 0.07142857142857142      | 6                 | 6                |
| Dog     | 5     | 1     | 1.97  | 1                | 0                        | 5                 | 5                |
| Rabbit  | 6     | 1     | 3.33  | 2                | 0.3333333333333333       | 6                 | 6                |

<BR>
