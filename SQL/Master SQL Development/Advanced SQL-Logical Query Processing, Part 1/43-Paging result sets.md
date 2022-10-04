```sql
SELECT *
FROM animals
ORDER BY name
LIMIT 3
```

| name  | species | primary_color | implant_chip_id                      | breed | gender | birth_date | pattern  | admission_date |
| :---- | :------ | :------------ | :----------------------------------- | :---- | :----- | :--------- | :------- | :------------- |
| Abby  | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor | 2016-07-19     |
| Ace   | Dog     | Ginger        | 33d50c6b-9d2e-4eb1-8171-0466dee4f349 | NULL  | M      | 2005-12-19 | Bicolor  | 2019-06-25     |
| Angel | Dog     | Brown         | f0769a5e-1a11-49f1-ac80-3f40a32ea158 | NULL  | F      | 2001-09-19 | Tuxedo   | 2017-02-04     |

<br>

```sql
SELECT *
FROM animals
ORDER BY primary_color
LIMIT 3
```

| name   | species | primary_color | implant_chip_id                      | breed     | gender | birth_date | pattern  | admission_date |
| :----- | :------ | :------------ | :----------------------------------- | :-------- | :----- | :--------- | :------- | :------------- |
| Abby   | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL      | F      | 1999-02-19 | Tricolor | 2016-07-19     |
| Boomer | Dog     | Black         | 01e2ad60-daa5-4681-b934-40c9dcf7d73a | Schnauzer | M      | 2013-08-11 | Tricolor | 2017-01-11     |
| Brody  | Dog     | Black         | eb517826-e48a-41ae-a5fb-1bbeca23c05d | Schnauzer | M      | 2007-08-23 | Tricolor | 2018-12-05     |

```sql
SELECT *
FROM animals
ORDER BY admission_date DESC
LIMIT 3 OFFSET 0;
```

| name    | species | primary_color | implant_chip_id                      | breed | gender | birth_date | pattern | admission_date |
| :------ | :------ | :------------ | :----------------------------------- | :---- | :----- | :--------- | :------ | :------------- |
| Kona    | Dog     | Gray          | c87ee041-973f-482c-b5e4-3310b4d80612 | NULL  | F      | 2008-10-16 | Bicolor | 2019-12-13     |
| Hudini  | Rabbit  | Cream         | de295dd6-502f-43e3-b139-06ceb3fa2128 | NULL  | M      | 2018-03-22 | Brindle | 2019-12-10     |
| Stanley | Cat     | Cream         | 44b218ef-c708-46b7-967e-16c16e4ad577 | NULL  | M      | 2005-01-19 | Tabby   | 2019-11-26     |

<br>
