- Extending SQL with user-defined functions
- SQL query functions
- Function overloading
- Function volatility
- PL/Python functions
- Challange: Write a user-defined function

# Extend SQL (Get out of the box)

- SQL provides many types of functions for operating on data
- Data science and analytics need more functions

### Types of SQL functions

- Aggregate
- String manipulation
- Pattern matching
- Date and time
- Geometric

### Custom Functions

- Customer loyalty level
- Past due priority score
- Predict lifetime value of a customer
- Predicted probability of defaulting on payments

### Five Type of User-Defined Functions

1. Query language functions written in SQL
2. Procedural functions written in PL/pgSQL
3. Internal functions written in C and statistically linked to PostgreSQL
4. C language functions avaliable through shared libraries
5. PL/Python by extension - not a trusted language

# SQL query functions

### Query Language Function

- Execute arbitrary list of SQL statements
- Return result of last statement
  - Last statement must be a SELECT
  - Or the function must be declared VOID
  - May be declared to return a set

### Types of SQL Statements

- Select
- Insert
- Update
- Begin
- Rollback
- Commit
- Savepoint

### CREATE FUNCTION

- CREATE FUNCTION
  - Creates new function
- CREATE OR REPLCAE FUNCTION
  - Updates the definition of function if it exists
  - Creates a new function if it does not exist

### DROP and CREATE FUNCTION

- DROP FUNCTION and CREATE FUNCTION
  - Deletes an existing function
  - Creates a new function
  - Need to drop existing rules, views, triggers and so on that refer to the dropped function

### HARMONIC MEAN

- A Kind of average
- Reciprocal of arithmetic mean
- Often used with rates
- Also used in information retrieval and machine learning

```sql
SELECT
    bed_occupancy_rate,
    room_occupancy_rate,
    round(((2*bed_occupancy_rate*room_occupancy_rate)/(bed_occupancy_rate))::numeric,2)
    as composite_occupancy_rate
FROM occupancy_rates
```

### Harmonic Mean Function

```sql
CREATE FUNCTION harmonic_mean (x numeric, y numeric) RETURNS numeric AS $$
    SELECT
        round(((2*x*y)/(x+y))::numeric,2)
$$ LANGUAGE SQL;
```

```SQL
CREATE OR REPLACE FUNCTION harmonic_mean (x numeric, y numeric) RETURNS numeric
AS $$
    SELECT round(((2*x*y)/(x+y))::numeric,2)
    $$ LANGUAGE SQL;
```

```SQL
SELECT harmonic_mean(10,99)
```

| harmonic_mean |
| :------------ |
| 18.17         |

# Function Overloading

- A single function can have multiple definitions
- Different definitions require different parameter signatures
  - CREATE FUNCTION harmonic_mean(x numeric, y numeric) RETURNS numeric
  - CREATE FUNCTION harmonic_mean(x text, y text) RETURNS numeric
- Useful when the same function can apply to different data types
- Avoids ambiguities
  - CREATE FUNCTION ambiguous (x int) RETURNS numeric
  - CREATE FUNCTION ambiguous (x smallint) RETURNS numeric
- Example

```sql
CREATE OR REPLACE FUNCTION harmonic_mean(x numeric,y numeric) RETURNS numeric
AS $$
    SELECT round(((2*x*y)/(x+y))::numeric,2)
    $$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION harmonic_mean(x text,y text) RETURNS numeric
AS $$
    SELECT round(((2*x::numeric*y::numeric)/(x::numeric+y::numeric))::numeric,2)
    $$ LANGUAGE SQL;
```

```sql
SELECT harmonic_mean('100','2'),harmonic_mean(100,2)
```

| harmonic_mean | harmonic_mean |
| :------------ | :------------ |
| 3.92          | 3.92          |

# Function Voatility

- Functions have a volatility classification
- Specifies the kinds of behaviors a function has
- Used to allow the optimizer to make assumptions about the function

### Classfications

- Volatile
- Stable
- Immutable

### Volatile

- Can perform any operation, including making changes to the database
- Optimizer makes no assumptions about the function
- Function is reevaluated at every row the function is needed

### Stable

- Can not modify the database
- Guaranteed to return the same results given the same arguments for all rows within a single statement
- Enable some optimizations

### Immutable

- Can not modify the database
- Guaranteed to return the same results given the same arguments for all cases
- Enable the most optimizations
- Example

```sql
CREATE OR REPLACE FUNCTION harmonic_mean (x numeric,y numeric) RETURNS numeric
AS $$
    SELECT round(((2*x*y)/(x+y))::numeric,2)
    $$ LANGUAGE SQL IMMUTABLE;
```

### Key Points about Volatility

- Use the most strict volatility classification possible for optimal performance
- Any function with side effects must be VOLATILE
- If function has no side effects but uses another function that can change value in a query, the user defined function must be VOLATILE

### PL/Python functions

- Can write PostgreSQL functions in Python
- Uses a Postgres extension

```sql
CREATE EXTENSION plpythonu
```

### Pros and Cons

- Reasons to Use Python
  - Use a language you already know
  - Reuse code already written
  - Avoiding having to learn PL/pgSQL for procedural code
- Reasons Not to Use Python
  - Not a trusted language
  - Code may damage the database
  - Installation can vary by PostgreSQL package

### Installation

- Need superuser privileges

```sql
CREATE EXTENSION plpython3u -- for Python 3
```

```sql
CREATE EXTENSION plpythonu -- for Python 2 (not recommended)
```

### Example

```sql
CREATE FUNCTION pymax (x x integer, y integer)
    RETURN integer
AS $$
    if x>y:
        return x
    $$LANGUAGE plpython3u;
```

### Key Points about PL/Python

- Need superuser privilege to install
- ALTER USER Postgres WITH superuser
- After installation, others can write PL/Python function
- Arguments are treated as global variables(Best to treat read only)

# Challange: Write a user-defined function
