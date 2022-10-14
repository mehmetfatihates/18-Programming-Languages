```sql
SELECT adopter_email, COUNT(*) AS number_of_adoptions
FROM adoptions
GROUP BY adopter_email
ORDER BY number_of_adoptions DESC;
```

| adopter_email                    | number_of_adoptions |
| :------------------------------- | :------------------ |
| wayne.turner@icloud.com          | 4                   |
| virginia.baker@gmail.com         | 4                   |
| richard.castillo@icloud.com      | 3                   |
| jerry.mitchell@icloud.com        | 2                   |
| jesse.cox@yahoo.com              | 2                   |
| roy.rogers@hotmail.com           | 2                   |
| julie.adams@gmail.com            | 2                   |
| george.scott@hotmail.com         | 2                   |
| margaret.campbell@hotmail.com    | 2                   |
| shirley.williams@outlook.com     | 2                   |
| lori.smith@icloud.com            | 2                   |
| doris.young@icloud.com           | 2                   |
| charles.phillips@gmail.com       | 2                   |
| frances.cook@yahoo.com           | 2                   |
| patrick.hughes@animalshelter.com | 2                   |
| phyllis.moore@gmail.com          | 2                   |
| karen.smith@icloud.com           | 1                   |
| bruce.cook@icloud.com            | 1                   |
| walter.edwards@icloud.com        | 1                   |
| adam.brown@gmail.com             | 1                   |

<br>

```SQL
SELECT adopter_email, COUNT(*) AS number_of_adoptions
FROM adoptions
GROUP BY adopter_email
HAVING COUNT(*) > 1
ORDER BY number_of_adoptions DESC;
```

| adopter_email                    | number_of_adoptions |
| :------------------------------- | :------------------ |
| virginia.baker@gmail.com         | 4                   |
| wayne.turner@icloud.com          | 4                   |
| richard.castillo@icloud.com      | 3                   |
| jerry.mitchell@icloud.com        | 2                   |
| shirley.williams@outlook.com     | 2                   |
| lori.smith@icloud.com            | 2                   |
| patrick.hughes@animalshelter.com | 2                   |
| doris.young@icloud.com           | 2                   |
| jesse.cox@yahoo.com              | 2                   |
| roy.rogers@hotmail.com           | 2                   |
| frances.cook@yahoo.com           | 2                   |
| charles.phillips@gmail.com       | 2                   |
| julie.adams@gmail.com            | 2                   |
| margaret.campbell@hotmail.com    | 2                   |
| phyllis.moore@gmail.com          | 2                   |
| george.scott@hotmail.com         | 2                   |

<BR>

```SQL
SELECT adopter_email, COUNT(*) AS number_of_adoptions
FROM adoptions
WHERE adopter_email NOT LIKE '%gmail.com'
GROUP BY adopter_email
HAVING COUNT(*) > 1
ORDER BY number_of_adoptions DESC;
```

| adopter_email                    | number_of_adoptions |
| :------------------------------- | :------------------ |
| wayne.turner@icloud.com          | 4                   |
| richard.castillo@icloud.com      | 3                   |
| shirley.williams@outlook.com     | 2                   |
| lori.smith@icloud.com            | 2                   |
| patrick.hughes@animalshelter.com | 2                   |
| jesse.cox@yahoo.com              | 2                   |
| roy.rogers@hotmail.com           | 2                   |
| frances.cook@yahoo.com           | 2                   |
| margaret.campbell@hotmail.com    | 2                   |
| george.scott@hotmail.com         | 2                   |
| doris.young@icloud.com           | 2                   |
| jerry.mitchell@icloud.com        | 2                   |

# Solution: Grouped query with Distinct

```sql
SELECT A.species,
       A.name,
       MAX(A.primary_color) AS primary_color, --Dummy aggregate
       MAX(A.breed), -- dummy aggregate
       COUNT(V.vaccine) AS num_vaccinations
FROM animals AS A
    LEFT OUTER JOIN
    vaccinations AS V
    ON V.NAME =A.NAME AND V.species = A.species
WHERE A.species <> 'Rabbit' AND (V.vaccine <> 'Rabbit' OR V.vaccine IS NULL)
GROUP BY A.species, A.name
HAVING MAX(V.vaccination_time)<'20191001' OR MAX(V.vaccination_time) IS NULL
ORDER BY A.species,A.name
```
