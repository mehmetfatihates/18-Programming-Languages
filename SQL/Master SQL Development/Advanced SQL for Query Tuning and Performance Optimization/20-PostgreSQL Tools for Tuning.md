- mock_staff.sql
- Explain and analyze
- Example plan: Selecting with a WHERE clause
- Indexes

# Explain and Analyze

```sql
SELECT * FROM staff;
```

| id  | last_name  | email                      | gender | department | start_date | salary | job_title                     | region_id |
| :-- | :--------- | :------------------------- | :----- | :--------- | :--------- | :----- | :---------------------------- | :-------- |
| 1   | Kelley     | rkelley0@soundcloud.com    | Female | Computers  | 2009-10-02 | 67470  | Structural Engineer           | 2         |
| 2   | Armstrong  | sarmstrong1@infoseek.co.jp | Male   | Sports     | 2008-03-31 | 71869  | Financial Advisor             | 2         |
| 3   | Carr       | fcarr2@woothemes.com       | Male   | Automotive | 2009-07-12 | 101768 | Recruiting Manager            | 3         |
| 4   | Murray     | jmurray3@gov.uk            | Female | Jewelery   | 2014-12-25 | 96897  | Desktop Support Technician    | 3         |
| 5   | Ellis      | jellis4@sciencedirect.com  | Female | Grocery    | 2002-09-19 | 63702  | Software Engineer III         | 7         |
| 6   | Phillips   | bphillips5@time.com        | Male   | Tools      | 2013-08-21 | 118497 | Executive Secretary           | 1         |
| 7   | Williamson | rwilliamson6@ted.com       | Male   | Computers  | 2006-05-14 | 65889  | Dental Hygienist              | 6         |
| 8   | Harris     | aharris7@ucoz.com          | Female | Toys       | 2003-08-12 | 84427  | Safety Technician I           | 4         |
| 9   | James      | rjames8@prnewswire.com     | Male   | Jewelery   | 2005-09-07 | 108657 | Sales Associate               | 2         |
| 10  | Sanchez    | rsanchez9@cloudflare.com   | Male   | Movies     | 2013-03-13 | 108093 | Sales Representative          | 1         |
| 11  | Jacobs     | jjacobsa@sbwire.com        | Female | Jewelery   | 2003-11-27 | 121966 | Community Outreach Specialist | 7         |
| 12  | Black      | mblackb@edublogs.org       | Male   | Clothing   | 2003-02-04 | 44179  | Data Coordiator               | 7         |
| 13  | Schmidt    | sschmidtc@state.gov        | Male   | Baby       | 2002-10-13 | 85227  | Compensation Analyst          | 3         |

```SQL
EXPLAIN SELECT * FROM staff
```

| QUERY PLAN                                                |
| :-------------------------------------------------------- |
| Seq Scan on staff \(cost=0.00..24.29 rows=1029 width=75\) |

```SQL
EXPLAIN ANALYZE SELECT * FROM staff
```

| QUERY PLAN                                                                                               |
| :------------------------------------------------------------------------------------------------------- |
| Seq Scan on staff \(cost=0.00..24.29 rows=1029 width=75\) \(actual time=0.018..0.169 rows=1000 loops=1\) |
| Planning Time: 0.104 ms                                                                                  |
| Execution Time: 0.217 ms                                                                                 |

```SQL
EXPLAIN ANALYZE SELECT gender FROM staff
```

| QUERY PLAN                                                                                              |
| :------------------------------------------------------------------------------------------------------ |
| Seq Scan on staff \(cost=0.00..24.29 rows=1029 width=5\) \(actual time=0.015..0.119 rows=1000 loops=1\) |
| Planning Time: 0.061 ms                                                                                 |
| Execution Time: 0.150 ms                                                                                |

# Example plan: Selecting with a WHERE clause

```SQL
SELECT * FROM staff WHERE salary > 75000
```

| id  | last_name | email                    | gender | department  | start_date | salary | job_title                     | region_id |
| :-- | :-------- | :----------------------- | :----- | :---------- | :--------- | :----- | :---------------------------- | :-------- |
| 3   | Carr      | fcarr2@woothemes.com     | Male   | Automotive  | 2009-07-12 | 101768 | Recruiting Manager            | 3         |
| 4   | Murray    | jmurray3@gov.uk          | Female | Jewelery    | 2014-12-25 | 96897  | Desktop Support Technician    | 3         |
| 6   | Phillips  | bphillips5@time.com      | Male   | Tools       | 2013-08-21 | 118497 | Executive Secretary           | 1         |
| 8   | Harris    | aharris7@ucoz.com        | Female | Toys        | 2003-08-12 | 84427  | Safety Technician I           | 4         |
| 9   | James     | rjames8@prnewswire.com   | Male   | Jewelery    | 2005-09-07 | 108657 | Sales Associate               | 2         |
| 10  | Sanchez   | rsanchez9@cloudflare.com | Male   | Movies      | 2013-03-13 | 108093 | Sales Representative          | 1         |
| 11  | Jacobs    | jjacobsa@sbwire.com      | Female | Jewelery    | 2003-11-27 | 121966 | Community Outreach Specialist | 7         |
| 13  | Schmidt   | sschmidtc@state.gov      | Male   | Baby        | 2002-10-13 | 85227  | Compensation Analyst          | 3         |
| 15  | Jacobs    | ajacobse@google.it       | Female | Games       | 2007-03-04 | 141139 | Community Outreach Specialist | 7         |
| 16  | Medina    | smedinaf@amazonaws.com   | Female | Baby        | 2008-03-14 | 106659 | Web Developer III             | 1         |
| 17  | Morgan    | dmorgang@123-reg.co.uk   | Female | Kids        | 2011-05-04 | 148952 | Programmer IV                 | 6         |
| 18  | Nguyen    | jnguyenh@google.com      | Male   | Home        | 2014-11-03 | 93804  | Geologist II                  | 5         |
| 19  | Day       | rdayi@chronoengine.com   | Male   | Electronics | 2004-09-22 | 109890 | VP Sales                      | 3         |

``

```SQL
EXPLAIN SELECT * FROM staff WHERE salary > 75000
```

| QUERY PLAN                                               |
| :------------------------------------------------------- |
| Seq Scan on staff \(cost=0.00..26.86 rows=743 width=75\) |
| Filter: \(salary &gt; 75000\)                            |

```SQL
EXPLAIN ANALYZE SELECT * FROM staff WHERE salary > 75000
```

| QUERY PLAN                                                                                             |
| :----------------------------------------------------------------------------------------------------- |
| Seq Scan on staff \(cost=0.00..26.86 rows=743 width=75\) \(actual time=0.016..0.140 rows=717 loops=1\) |
| Filter: \(salary &gt; 75000\)                                                                          |
| Rows Removed by Filter: 283                                                                            |
| Planning Time: 0.074 ms                                                                                |
| Execution Time: 0.169 ms                                                                               |

# Indexes

```sql
CREATE INDEX idx_staff_salary ON staff(salary)
```

```SQL
EXPLAIN SELECT * FROM staff
```

| QUERY PLAN                                                |
| :-------------------------------------------------------- |
| Seq Scan on staff \(cost=0.00..24.00 rows=1000 width=75\) |

```SQL
EXPLAIN ANALYZE SELECT * FROM staff WHERE salary > 75000
```

| QUERY PLAN                                                                                             |
| :----------------------------------------------------------------------------------------------------- |
| Seq Scan on staff \(cost=0.00..26.50 rows=722 width=75\) \(actual time=0.032..0.140 rows=717 loops=1\) |
| Filter: \(salary &gt; 75000\)                                                                          |
| Rows Removed by Filter: 283                                                                            |
| Planning Time: 0.117 ms                                                                                |
| Execution Time: 0.170 ms                                                                               |

```sql
EXPLAIN ANALYZE SELECT * FROM staff WHERE salary > 150000
```

| QUERY PLAN                                                                                                                 |
| :------------------------------------------------------------------------------------------------------------------------- |
| Index Scan using idx_staff_salary on staff \(cost=0.28..8.29 rows=1 width=75\) \(actual time=0.005..0.005 rows=0 loops=1\) |
| Index Cond: \(salary &gt; 150000\)                                                                                         |
| Planning Time: 0.370 ms                                                                                                    |
| Execution Time: 0.017 ms                                                                                                   |

```sql
EXPLAIN ANALYZE SELECT * FROM staff WHERE salary > 150000
```

| QUERY PLAN                                                                                                                 |
| :------------------------------------------------------------------------------------------------------------------------- |
| Index Scan using idx_staff_salary on staff \(cost=0.28..8.29 rows=1 width=75\) \(actual time=0.003..0.003 rows=0 loops=1\) |
| Index Cond: \(salary &gt; 150000\)                                                                                         |
| Planning Time: 0.102 ms                                                                                                    |
| Execution Time: 0.014 ms                                                                                                   |
