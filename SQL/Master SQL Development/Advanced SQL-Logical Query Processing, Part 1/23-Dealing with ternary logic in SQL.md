### Outputs are just first 25 rows

```sql
SELECT * FROM animals
   WHERE breed = null OR breed != null;
```

| name | species | primary_color | implant_chip_id | breed | gender | birth_date | pattern | admission_date |
| :--- | :------ | :------------ | :-------------- | :---- | :----- | :--------- | :------ | :------------- |

<br>

```sql
SELECT * FROM animals
    WHERE breed = 'Bullmastiff' OR breed != 'Bullmastiff'
```

| name       | species | primary_color | implant_chip_id                      | breed            | gender | birth_date | pattern       | admission_date |
| :--------- | :------ | :------------ | :----------------------------------- | :--------------- | :----- | :--------- | :------------ | :------------- |
| Archie     | Cat     | Ginger        | 970d7094-ab66-4dca-a0d1-0c16264989af | Persian          | M      | 2009-08-26 | Tricolor      | 2016-07-10     |
| Baloo      | Rabbit  | White         | f5ce3a02-1ec7-431d-8a76-09369e8d798b | English Lop      | M      | 2015-04-27 | Broken        | 2016-08-21     |
| Benji      | Dog     | Gray          | 646f0a76-14e4-42e7-9554-3af1ea6cc78f | English setter   | M      | 2012-05-21 | Bicolor       | 2018-10-02     |
| Boomer     | Dog     | Black         | 01e2ad60-daa5-4681-b934-40c9dcf7d73a | Schnauzer        | M      | 2013-08-11 | Tricolor      | 2017-01-11     |
| Brody      | Dog     | Black         | eb517826-e48a-41ae-a5fb-1bbeca23c05d | Schnauzer        | M      | 2007-08-23 | Tricolor      | 2018-12-05     |
| Brutus     | Dog     | Ginger        | b7fad096-7cd1-42a7-85d6-0c3e6599dbeb | Weimaraner       | M      | 2011-04-04 | Bicolor       | 2018-08-03     |
| Callie     | Dog     | Cream         | 2636f17f-5893-482f-94a7-47eeb715047a | English setter   | F      | 2003-08-28 | Solid         | 2017-12-19     |
| Emma       | Dog     | Black         | bac4c56d-ebb6-43e3-86f3-36506e17f74d | Schnauzer        | F      | 2006-12-26 | Tricolor      | 2019-03-28     |
| Frankie    | Dog     | Gray          | cc96e651-2f1c-45f8-bce2-26ac8c9868a7 | English setter   | M      | 2003-09-10 | Bicolor       | 2016-06-20     |
| Gus        | Dog     | Cream         | 104a1427-d921-4d11-b45c-370c70e1578f | English setter   | M      | 2014-10-29 | Solid         | 2016-09-28     |
| Humphrey   | Rabbit  | Cream         | 2a423596-5bf8-41a7-906a-0bd3ea15e17c | Belgian Hare     | M      | 2008-12-22 | Brindle       | 2017-12-31     |
| Ivy        | Cat     | Brown         | 0955c70b-a2b6-4d78-8e4b-1f6386ffc763 | Turkish Angora   | F      | 2013-05-13 | Spotted       | 2018-05-20     |
| Jake       | Dog     | White         | 9209d54c-0238-457b-9922-02171e9df0e6 | Bullmastiff      | M      | 2011-02-27 | Tuxedo        | 2016-12-14     |
| Jax        | Dog     | Ginger        | 24ad2ed9-e7e6-4571-8a45-3c9361418b07 | Weimaraner       | M      | 2009-02-06 | Bicolor       | 2017-10-03     |
| Lily       | Dog     | Black         | 11de2603-8bcf-49b6-9dde-46f893d93948 | Schnauzer        | F      | 2001-04-03 | Tricolor      | 2016-06-18     |
| Lucy       | Dog     | Brown         | 3a389eaf-f623-4cd7-9ec9-2144ca9d244c | Weimaraner       | F      | 2003-04-04 | Tuxedo        | 2018-02-22     |
| Mac        | Dog     | Gray          | 3b55a74d-c5f7-44bc-9e6a-11c446628a0d | English setter   | M      | 2006-12-23 | Bicolor       | 2018-01-03     |
| Miss Kitty | Cat     | Black         | 1ab8347c-6349-4092-9667-09653a9fd09c | Maine Coon       | F      | 2016-09-19 | Bicolor       | 2019-10-19     |
| Misty      | Cat     | Ginger        | 805281a0-5de6-4ba8-8fb1-11cefe0575e0 | Siamese          | F      | 2009-02-21 | Spotted       | 2019-06-06     |
| Nala       | Dog     | Gray          | 2929bba7-ed35-43f1-9f3e-01120beb4f8b | English setter   | F      | 2018-06-02 | Bicolor       | 2019-07-19     |
| Nova       | Cat     | White         | 81802526-cae2-40bb-846a-01d2156545b4 | Sphynx           | F      | 2011-04-07 | Tortoiseshell | 2017-12-09     |
| Pearl      | Cat     | Brown         | df9291b5-9f82-4ad1-a9fd-1206fd6cd837 | American Bobtail | F      | 2012-07-05 | Tricolor      | 2019-04-09     |
| Penelope   | Cat     | Brown         | 5a6a4dc1-b813-4331-b027-1718eb50bc9e | Scottish Fold    | F      | 2000-09-21 | Tabby         | 2017-07-12     |

```sql
SELECT * FROM animals
    WHERE breed IS NOT NULL ;
```

| name    | species | primary_color | implant_chip_id                      | breed | gender | birth_date | pattern       | admission_date |
| :------ | :------ | :------------ | :----------------------------------- | :---- | :----- | :--------- | :------------ | :------------- |
| Abby    | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL  | F      | 1999-02-19 | Tricolor      | 2016-07-19     |
| Ace     | Dog     | Ginger        | 33d50c6b-9d2e-4eb1-8171-0466dee4f349 | NULL  | M      | 2005-12-19 | Bicolor       | 2019-06-25     |
| Angel   | Dog     | Brown         | f0769a5e-1a11-49f1-ac80-3f40a32ea158 | NULL  | F      | 2001-09-19 | Tuxedo        | 2017-02-04     |
| April   | Rabbit  | Gray          | ccfef7e8-6fad-4ba0-81ea-0611dd229e42 | NULL  | F      | 2005-01-27 | Broken        | 2019-04-24     |
| Arya    | Dog     | Gray          | cd1528ad-c91d-47ea-9b70-3cacd5bdbe71 | NULL  | F      | 2014-04-14 | Bicolor       | 2018-06-10     |
| Aspen   | Dog     | Brown         | 51d4cfd1-cd25-4c5a-aa52-0bfd771f8886 | NULL  | F      | 2010-04-17 | Tuxedo        | 2016-02-09     |
| Bailey  | Dog     | Ginger        | 36438bc9-e225-4038-97b2-1e28fd287957 | NULL  | F      | 2014-09-28 | Bicolor       | 2018-10-01     |
| Beau    | Dog     | Cream         | 4b94a68c-0c97-4f70-9275-35b3a9eee8d9 | NULL  | M      | 2016-02-09 | Solid         | 2017-05-24     |
| Benny   | Dog     | Brown         | 2ae54bbb-a587-49d5-9a4d-1400a303c4bf | NULL  | M      | 2010-03-04 | Tuxedo        | 2018-09-30     |
| Blue    | Dog     | Ginger        | 6d296d1d-e14d-4308-8b4f-27f87fe1534e | NULL  | M      | 2003-09-03 | Bicolor       | 2016-04-03     |
| Bon bon | Rabbit  | Gray          | bce7e239-304a-483d-9e38-05b9b66af496 | NULL  | F      | 2002-06-29 | Broken        | 2016-01-03     |
| Buddy   | Cat     | White         | 6d49b3f6-e075-4f33-97a3-1d4878ee1345 | NULL  | M      | 2017-01-26 | Tortoiseshell | 2018-12-20     |
| Charlie | Cat     | Gray          | ab967364-43cc-4dd2-a4d9-080f0def56ca | NULL  | M      | 2016-06-16 | Calico        | 2018-02-16     |
| Chico   | Dog     | Brown         | c6614119-945a-45a9-a5a2-3c8f840edc01 | NULL  | M      | 2014-03-20 | Tuxedo        | 2019-03-22     |
| Chubby  | Rabbit  | Ginger        | 561fea02-9c12-43b1-9ea8-071c9eae4c55 | NULL  | M      | 2013-02-07 | Broken        | 2017-10-31     |
| Cleo    | Cat     | Black         | 0897655b-1486-4d5d-ad60-03a855afcaf3 | NULL  | F      | 2015-08-13 | Tortoiseshell | 2019-09-06     |
| Cooper  | Dog     | Black         | 14f9e97b-6cd4-4ee4-9798-1c4f2376141b | NULL  | M      | 2009-11-15 | Tricolor      | 2017-01-15     |
| Cosmo   | Cat     | Cream         | 2754b9c9-5df4-4206-818d-21bdd1a093ed | NULL  | M      | 2017-11-09 | Solid         | 2019-05-13     |
| Dolly   | Dog     | Gray          | dbdc4f81-1709-49d6-9f73-1d2099eca35c | NULL  | F      | 2013-09-29 | Bicolor       | 2018-04-27     |
| Fiona   | Cat     | Gray          | 90226140-f54e-419d-82e5-0ea81e0e6384 | NULL  | F      | 1999-05-23 | Calico        | 2017-01-13     |
| George  | Cat     | Brown         | 6fefc95e-7d46-4e25-b90a-0ba75f45d972 | NULL  | M      | 2001-10-04 | Bicolor       | 2017-11-24     |
| Ginger  | Dog     | Ginger        | 9e241a82-ad77-49dc-ad15-0ac8d2e89dde | NULL  | F      | 2015-11-17 | Bicolor       | 2016-11-27     |

<BR>

```sql
SELECT * FROM animals
    WHERE breed != 'Bullmastiff' OR breed IS NULL
```

| name    | species | primary_color | implant_chip_id                      | breed          | gender | birth_date | pattern       | admission_date |
| :------ | :------ | :------------ | :----------------------------------- | :------------- | :----- | :--------- | :------------ | :------------- |
| Abby    | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL           | F      | 1999-02-19 | Tricolor      | 2016-07-19     |
| Ace     | Dog     | Ginger        | 33d50c6b-9d2e-4eb1-8171-0466dee4f349 | NULL           | M      | 2005-12-19 | Bicolor       | 2019-06-25     |
| Angel   | Dog     | Brown         | f0769a5e-1a11-49f1-ac80-3f40a32ea158 | NULL           | F      | 2001-09-19 | Tuxedo        | 2017-02-04     |
| April   | Rabbit  | Gray          | ccfef7e8-6fad-4ba0-81ea-0611dd229e42 | NULL           | F      | 2005-01-27 | Broken        | 2019-04-24     |
| Archie  | Cat     | Ginger        | 970d7094-ab66-4dca-a0d1-0c16264989af | Persian        | M      | 2009-08-26 | Tricolor      | 2016-07-10     |
| Arya    | Dog     | Gray          | cd1528ad-c91d-47ea-9b70-3cacd5bdbe71 | NULL           | F      | 2014-04-14 | Bicolor       | 2018-06-10     |
| Aspen   | Dog     | Brown         | 51d4cfd1-cd25-4c5a-aa52-0bfd771f8886 | NULL           | F      | 2010-04-17 | Tuxedo        | 2016-02-09     |
| Bailey  | Dog     | Ginger        | 36438bc9-e225-4038-97b2-1e28fd287957 | NULL           | F      | 2014-09-28 | Bicolor       | 2018-10-01     |
| Baloo   | Rabbit  | White         | f5ce3a02-1ec7-431d-8a76-09369e8d798b | English Lop    | M      | 2015-04-27 | Broken        | 2016-08-21     |
| Beau    | Dog     | Cream         | 4b94a68c-0c97-4f70-9275-35b3a9eee8d9 | NULL           | M      | 2016-02-09 | Solid         | 2017-05-24     |
| Benji   | Dog     | Gray          | 646f0a76-14e4-42e7-9554-3af1ea6cc78f | English setter | M      | 2012-05-21 | Bicolor       | 2018-10-02     |
| Benny   | Dog     | Brown         | 2ae54bbb-a587-49d5-9a4d-1400a303c4bf | NULL           | M      | 2010-03-04 | Tuxedo        | 2018-09-30     |
| Blue    | Dog     | Ginger        | 6d296d1d-e14d-4308-8b4f-27f87fe1534e | NULL           | M      | 2003-09-03 | Bicolor       | 2016-04-03     |
| Bon bon | Rabbit  | Gray          | bce7e239-304a-483d-9e38-05b9b66af496 | NULL           | F      | 2002-06-29 | Broken        | 2016-01-03     |
| Boomer  | Dog     | Black         | 01e2ad60-daa5-4681-b934-40c9dcf7d73a | Schnauzer      | M      | 2013-08-11 | Tricolor      | 2017-01-11     |
| Brody   | Dog     | Black         | eb517826-e48a-41ae-a5fb-1bbeca23c05d | Schnauzer      | M      | 2007-08-23 | Tricolor      | 2018-12-05     |
| Brutus  | Dog     | Ginger        | b7fad096-7cd1-42a7-85d6-0c3e6599dbeb | Weimaraner     | M      | 2011-04-04 | Bicolor       | 2018-08-03     |
| Buddy   | Cat     | White         | 6d49b3f6-e075-4f33-97a3-1d4878ee1345 | NULL           | M      | 2017-01-26 | Tortoiseshell | 2018-12-20     |
| Callie  | Dog     | Cream         | 2636f17f-5893-482f-94a7-47eeb715047a | English setter | F      | 2003-08-28 | Solid         | 2017-12-19     |
| Charlie | Cat     | Gray          | ab967364-43cc-4dd2-a4d9-080f0def56ca | NULL           | M      | 2016-06-16 | Calico        | 2018-02-16     |
| Chico   | Dog     | Brown         | c6614119-945a-45a9-a5a2-3c8f840edc01 | NULL           | M      | 2014-03-20 | Tuxedo        | 2019-03-22     |
| Chubby  | Rabbit  | Ginger        | 561fea02-9c12-43b1-9ea8-071c9eae4c55 | NULL           | M      | 2013-02-07 | Broken        | 2017-10-31     |

<br>

```sql
SELECT * FROM animals AS a
    WHERE breed IS DISTINCT FROM 'Bullmastiff';
```

| name    | species | primary_color | implant_chip_id                      | breed          | gender | birth_date | pattern       | admission_date |
| :------ | :------ | :------------ | :----------------------------------- | :------------- | :----- | :--------- | :------------ | :------------- |
| Abby    | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL           | F      | 1999-02-19 | Tricolor      | 2016-07-19     |
| Ace     | Dog     | Ginger        | 33d50c6b-9d2e-4eb1-8171-0466dee4f349 | NULL           | M      | 2005-12-19 | Bicolor       | 2019-06-25     |
| Angel   | Dog     | Brown         | f0769a5e-1a11-49f1-ac80-3f40a32ea158 | NULL           | F      | 2001-09-19 | Tuxedo        | 2017-02-04     |
| April   | Rabbit  | Gray          | ccfef7e8-6fad-4ba0-81ea-0611dd229e42 | NULL           | F      | 2005-01-27 | Broken        | 2019-04-24     |
| Archie  | Cat     | Ginger        | 970d7094-ab66-4dca-a0d1-0c16264989af | Persian        | M      | 2009-08-26 | Tricolor      | 2016-07-10     |
| Arya    | Dog     | Gray          | cd1528ad-c91d-47ea-9b70-3cacd5bdbe71 | NULL           | F      | 2014-04-14 | Bicolor       | 2018-06-10     |
| Aspen   | Dog     | Brown         | 51d4cfd1-cd25-4c5a-aa52-0bfd771f8886 | NULL           | F      | 2010-04-17 | Tuxedo        | 2016-02-09     |
| Bailey  | Dog     | Ginger        | 36438bc9-e225-4038-97b2-1e28fd287957 | NULL           | F      | 2014-09-28 | Bicolor       | 2018-10-01     |
| Baloo   | Rabbit  | White         | f5ce3a02-1ec7-431d-8a76-09369e8d798b | English Lop    | M      | 2015-04-27 | Broken        | 2016-08-21     |
| Beau    | Dog     | Cream         | 4b94a68c-0c97-4f70-9275-35b3a9eee8d9 | NULL           | M      | 2016-02-09 | Solid         | 2017-05-24     |
| Benji   | Dog     | Gray          | 646f0a76-14e4-42e7-9554-3af1ea6cc78f | English setter | M      | 2012-05-21 | Bicolor       | 2018-10-02     |
| Benny   | Dog     | Brown         | 2ae54bbb-a587-49d5-9a4d-1400a303c4bf | NULL           | M      | 2010-03-04 | Tuxedo        | 2018-09-30     |
| Blue    | Dog     | Ginger        | 6d296d1d-e14d-4308-8b4f-27f87fe1534e | NULL           | M      | 2003-09-03 | Bicolor       | 2016-04-03     |
| Bon bon | Rabbit  | Gray          | bce7e239-304a-483d-9e38-05b9b66af496 | NULL           | F      | 2002-06-29 | Broken        | 2016-01-03     |
| Boomer  | Dog     | Black         | 01e2ad60-daa5-4681-b934-40c9dcf7d73a | Schnauzer      | M      | 2013-08-11 | Tricolor      | 2017-01-11     |
| Brody   | Dog     | Black         | eb517826-e48a-41ae-a5fb-1bbeca23c05d | Schnauzer      | M      | 2007-08-23 | Tricolor      | 2018-12-05     |
| Brutus  | Dog     | Ginger        | b7fad096-7cd1-42a7-85d6-0c3e6599dbeb | Weimaraner     | M      | 2011-04-04 | Bicolor       | 2018-08-03     |
| Buddy   | Cat     | White         | 6d49b3f6-e075-4f33-97a3-1d4878ee1345 | NULL           | M      | 2017-01-26 | Tortoiseshell | 2018-12-20     |
| Callie  | Dog     | Cream         | 2636f17f-5893-482f-94a7-47eeb715047a | English setter | F      | 2003-08-28 | Solid         | 2017-12-19     |
| Charlie | Cat     | Gray          | ab967364-43cc-4dd2-a4d9-080f0def56ca | NULL           | M      | 2016-06-16 | Calico        | 2018-02-16     |
| Chico   | Dog     | Brown         | c6614119-945a-45a9-a5a2-3c8f840edc01 | NULL           | M      | 2014-03-20 | Tuxedo        | 2019-03-22     |
| Chubby  | Rabbit  | Ginger        | 561fea02-9c12-43b1-9ea8-071c9eae4c55 | NULL           | M      | 2013-02-07 | Broken        | 2017-10-31     |

<br>

```sql
SELECT * FROM animals AS a
    WHERE (breed = 'Bullmastiff') IS NOT TRUE;
```

| name    | species | primary_color | implant_chip_id                      | breed          | gender | birth_date | pattern       | admission_date |
| :------ | :------ | :------------ | :----------------------------------- | :------------- | :----- | :--------- | :------------ | :------------- |
| Abby    | Dog     | Black         | fdfdb6fe-3347-4e80-8c8a-2e3235c6d1de | NULL           | F      | 1999-02-19 | Tricolor      | 2016-07-19     |
| Ace     | Dog     | Ginger        | 33d50c6b-9d2e-4eb1-8171-0466dee4f349 | NULL           | M      | 2005-12-19 | Bicolor       | 2019-06-25     |
| Angel   | Dog     | Brown         | f0769a5e-1a11-49f1-ac80-3f40a32ea158 | NULL           | F      | 2001-09-19 | Tuxedo        | 2017-02-04     |
| April   | Rabbit  | Gray          | ccfef7e8-6fad-4ba0-81ea-0611dd229e42 | NULL           | F      | 2005-01-27 | Broken        | 2019-04-24     |
| Archie  | Cat     | Ginger        | 970d7094-ab66-4dca-a0d1-0c16264989af | Persian        | M      | 2009-08-26 | Tricolor      | 2016-07-10     |
| Arya    | Dog     | Gray          | cd1528ad-c91d-47ea-9b70-3cacd5bdbe71 | NULL           | F      | 2014-04-14 | Bicolor       | 2018-06-10     |
| Aspen   | Dog     | Brown         | 51d4cfd1-cd25-4c5a-aa52-0bfd771f8886 | NULL           | F      | 2010-04-17 | Tuxedo        | 2016-02-09     |
| Bailey  | Dog     | Ginger        | 36438bc9-e225-4038-97b2-1e28fd287957 | NULL           | F      | 2014-09-28 | Bicolor       | 2018-10-01     |
| Baloo   | Rabbit  | White         | f5ce3a02-1ec7-431d-8a76-09369e8d798b | English Lop    | M      | 2015-04-27 | Broken        | 2016-08-21     |
| Beau    | Dog     | Cream         | 4b94a68c-0c97-4f70-9275-35b3a9eee8d9 | NULL           | M      | 2016-02-09 | Solid         | 2017-05-24     |
| Benji   | Dog     | Gray          | 646f0a76-14e4-42e7-9554-3af1ea6cc78f | English setter | M      | 2012-05-21 | Bicolor       | 2018-10-02     |
| Benny   | Dog     | Brown         | 2ae54bbb-a587-49d5-9a4d-1400a303c4bf | NULL           | M      | 2010-03-04 | Tuxedo        | 2018-09-30     |
| Blue    | Dog     | Ginger        | 6d296d1d-e14d-4308-8b4f-27f87fe1534e | NULL           | M      | 2003-09-03 | Bicolor       | 2016-04-03     |
| Bon bon | Rabbit  | Gray          | bce7e239-304a-483d-9e38-05b9b66af496 | NULL           | F      | 2002-06-29 | Broken        | 2016-01-03     |
| Boomer  | Dog     | Black         | 01e2ad60-daa5-4681-b934-40c9dcf7d73a | Schnauzer      | M      | 2013-08-11 | Tricolor      | 2017-01-11     |
| Brody   | Dog     | Black         | eb517826-e48a-41ae-a5fb-1bbeca23c05d | Schnauzer      | M      | 2007-08-23 | Tricolor      | 2018-12-05     |
| Brutus  | Dog     | Ginger        | b7fad096-7cd1-42a7-85d6-0c3e6599dbeb | Weimaraner     | M      | 2011-04-04 | Bicolor       | 2018-08-03     |
| Buddy   | Cat     | White         | 6d49b3f6-e075-4f33-97a3-1d4878ee1345 | NULL           | M      | 2017-01-26 | Tortoiseshell | 2018-12-20     |
| Callie  | Dog     | Cream         | 2636f17f-5893-482f-94a7-47eeb715047a | English setter | F      | 2003-08-28 | Solid         | 2017-12-19     |
| Charlie | Cat     | Gray          | ab967364-43cc-4dd2-a4d9-080f0def56ca | NULL           | M      | 2016-06-16 | Calico        | 2018-02-16     |
| Chico   | Dog     | Brown         | c6614119-945a-45a9-a5a2-3c8f840edc01 | NULL           | M      | 2014-03-20 | Tuxedo        | 2019-03-22     |
| Chubby  | Rabbit  | Ginger        | 561fea02-9c12-43b1-9ea8-071c9eae4c55 | NULL           | M      | 2013-02-07 | Broken        | 2017-10-31     |
