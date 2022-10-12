- Designing an ecommerce application database
- Creating tables and loading data
- Using environment variables for connection parameters
- Connecting to a database
- Parameterizing SELECT statements
- Avoiding N+1 queries
- Challange: Write a parameterized query in Python

# Designing an ecommerce application database

- What data needs to be collected and stored ?
- How will the data be queried ?
- How much data will be stored and will it grow ?
- Who can access the data ?

# Creating tables and loading data

- loading data folder
  - customers.csv
  - orders.csv
  - product_orders.csv
  - products.csv

# Using environment variables for connection parameters

- 11-Connecting to a database.ipynb

# Connecting to a database

- 11-Connecting to a database.ipynb

# Parameterizing SELECT statements

- 12-Parameterizing_SELECT_statements.ipynb

# Avoiding N+1 queries

- 13-Avoiding_N+1_queries.ipynb

# Challange: Write a parameterized query in Python

```python
def getProductOrdersByType(db_conn, prod_type):
    cursor = db_conn.cursor()
    sql_string = "SELECT po.*   \
                    FROM product_orders po  \
                    INNER JOIN products p   \
                    ON po.product_id = p.product_id  \
                    WHERE p.product_type = %s"
    cursor.execute(sql_string,[prod_type])
    return(cursor.fetchall())

getProductOrdersByType(conn, 'oven')

```

```python
def getProductOrdersByType2(db_conn, prod_type):
    cursor = db_conn.cursor()
    sql_string = "SELECT po.*  \
                    FROM product_orders po  \
                    INNER JOIN products p    \
                    ON po.product_id = p.product_id  \
                    WHERE p.product_type = %s  \
                    AND po.quantity > 3"
    cursor.execute(sql_string,[prod_type])
    return(cursor.fetchall())

getProductOrdersByType2(conn,'fryer')

```

```python
def getProductOrdersByType3(db_conn, prod_type):
    cursor = db_conn.cursor()
    sql_string = "SELECT po.*  \
                    FROM product_orders po  \
                    INNER JOIN products p    \
                    ON po.product_id = p.product_id  \
                    WHERE p.product_type = %s  \
                    AND po.quantity > %s"
    cursor.execute(sql_string,[prod_type,3])
    return(cursor.fetchall())
```

```python
getProductOrdersByType3(conn,'fryer')
```
