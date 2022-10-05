### Show adopters who adopted 2 animals in 1 day

```sql
SELECT A1.adopter_email, A1.adoption_date,
       A1.name AS name1, A1.species AS species1,
       A2.name AS name2, A2.species AS species2
FROM adoptions AS A1
        INNER JOIN
        adoptions AS A2
        ON A1.adopter_email = A2.adopter_email
            AND
            A1.adoption_date = A2.adoption_date
            AND ((A1.name = A2.name AND A1.species > A2.species)
                OR
                 (A1.name > A2.name AND A1.species = A2.species)
                OR
                 (A1.name > A2.name AND A1.species <> A2.species))
ORDER BY A1.adopter_email,A1.adoption_date;
```

| adopter_email                    | adoption_date | name1  | species1 | name2  | species2 |
| :------------------------------- | :------------ | :----- | :------- | :----- | :------- |
| frances.cook@yahoo.com           | 2018-12-29    | Sam    | Cat      | Gus    | Dog      |
| patrick.hughes@animalshelter.com | 2018-08-30    | Archie | Cat      | Abby   | Dog      |
| wayne.turner@icloud.com          | 2018-04-01    | Shadow | Dog      | Jax    | Dog      |
| wayne.turner@icloud.com          | 2019-07-26    | Nala   | Dog      | Bailey | Dog      |

<BR>
