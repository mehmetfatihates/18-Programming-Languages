- Overview of object-relational mapping
- Introduction to SQLAlchemy
- Installing SQLAlchemy
- Query with SQLAlchemy
- Limitations of ORM an cautionary advice
- Challange: Create an ORM model

# Overview of object-relational mapping

### Relational vs. Qbject-Oriented Model

- Relational databases model entities using an ordered set of attributes (tuples or rows) organized into collections called tables
- Object-oriented models are based on concept of class and instance
- Classes describe structure of an object
- Instances are objects that store data about a particular entity

### Some Similarities

- Both kinds of models are used to represent entities
- In a relational model, an entity is described by a row, which has attributes
- In object-oriented models, an entity is described by an instance, such as instance variables

# Introduction to SQLAlchemy

### Object-Relational Mapping

- Python SQL toolkit and object-relational mapper
- Tables are mapped to classes
- Performs many low-level tasks but developers can still use SQL
- SQLAlchemy has both a Core and ORM components

### High-Level Operations

- Connecting
- Declaring a mapping
- Creating sessions
- Adding, updating and deleting data
- Querying data
- Commit and rollback

1. Builds on DBAPI

- Uses standard database APIs

2. Generates SQL

- Maps from objects and functions to SQL statements

3. Abstracts DB Specifics

- More easily move between different between different relational databases

# Query with SQLAlchemy

- 31-Query_With_SQLAlchemy.ipynb

# Limitations of ORM an cautionary advice

- ORM May Not Be a Good Fit
  - When working with a complex data model
  - Cross-database transactions
  - Fine-grained transaction control
  - Query tuning
  - Security considerations

# Challange: Create an ORM model

```python
class Supplier(base):
    __tablename__ = Column(Integer, primary_key = True)
    supplier_name = Column(String)
    supplier_region = Column(String)
    supplier_level = Column(Integer)
```
