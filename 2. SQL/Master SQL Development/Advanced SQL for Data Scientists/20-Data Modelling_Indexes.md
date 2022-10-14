- **B-Tree indexes**
- **Bitmap indexes**
- **Hash indexes**
- **GiST and SP-GiST indexes**
- **GIN and BRIN indexes**
- **Choosing an optimal indexing strategy**

# B-Tree Indexes

### Indexing for Analytical Queries

- Reduces need to scan data blocks
- Comes at cost of additional writes during data loading
- The higher the cardinality of indexed data, the better the performance improvement
- Not used in analytical databases,such as Google Big Query

### Type of Indexes

- B-tree
- Bitmap
- Hash
- Special-purpose indexes

### B: Balanced

- Capture small amounts of data
- Work well in many different cases
- Ability to look up values in logarithmic time

### B-Tree Indexes

- Binary tree

# Bitmap Indexes

- A list of value kind of tpye into a bit string "Yes or No", "1 or 0" ...
- Used when small number of possible values in column(low cardinality)
- Filter by bitwise operations, such as AND,OR and NOT
- Time to access is based on timae to perform bitwise operations
- Read-intensive use cases, few writes

### Bitmap Index Availability

- Some databases allow you create bitmap indexes expicitly
- PostgreSQL does not
- But PosgtgreSQL builds bitmap indexes on the fly as needed

# Hash indexes

- Function for mapping arbitrary length data to a fixed-size string f(x) = y
- Hash values virtually unique
- Even slight changes in input prodecuce new hash
- Size of hash value depends on algorithm used
- No order preserving with hash functions
- Similar inputs have vastly different outputs

### Using Hash Indexes

- Equality operations only
- Can be smaller than B-tree indexes(PostgreSQL)
- Comparable with speed of B-tree build and access

# GiST and SP-GiST indexes

### GiST

- Generalized Search Tree
- Balance tree-structure access method
- Used as template to implement other indexing schema
  - B-tree - self-balancing tree; operations in logarithmic time
  - R-tree - index of multidimensioal data such as geographic coordinates
- Used in PostgreSQL for indexing
  - hstore
  - ltree

##### GiST Operator Classes and Indexed Data Types

- Box_ops - box
- Circle_ops - circle
- Inet_ops - inet,cidr
- Point_ops - point
- Poly_ops - polygon
- Range_ops - any range type
- Tsquery_ops - text queries
- Tsvector_ops - tsvectors, sorted list of distinct lexemes

### SP-GiST

- Space-partitioned GiST
- Supports partitioned search trees
- Useful for non-balanced data structures
  - quadtree - tree with internal nodes having four children
  - k-d tree - k-dimensional tree, used to index points in k-dimensional space
- Like GiST, SP-GiST used to develop custom indexes

##### SP-GiST Operators and Indexed Data Types

- kd_point_ops
- quad_point_ops
- range_ops - any range type
- box_ops - box
- poly_ops - polygon
- text_ops - text
- Inet_ops - inet, cidr

# GIN and BRIN indexes

### GIN

- Generalized Inverted index
- Used when data to be indexed are composite values
- Composite values require index to search for elements within composite item
- Example: words in a document
- Index stores data in pairs(key,posting list)
  - Key is an element value
  - Posting list is a set of row IDs in which the key occurs
- Access methods defines when creating a GIN index based on the types of data indexed

### Built-In Operator Classes

- Array_opse - any array
- Json_ops - jsonb
- Json_path - jsonb
- Tsvector_ops - text vectors

### GIN Index Tips

- Insertion can slow beacuse many keys may be inserted for each item, for example, many words in a document
- For very large bulk operations, likely faster to drop and recreate index
- Pstgres can postpone much of indexing work by using temporary lists
  - Temporary lists eventually inserted into index using optimized bulk insertion techniques
  - Disadvantage is that temporary list must be searched in addition to regular index
  - Large temporary lists will slow searches significantly
  - Disable fastupdate paramater in CREATE INDEX to disable temporary lists

### BRIN

- Block Range Index
- Used with very large tables
- Columns data has a correlation with physical location
  - Postal code
  - Dates
- Block ranges are pages that are physically adjacent in a table
- BRIN indexes store summary information about block ranges
- BRIN indexes tend to be small
  - Entries for block ranges, not individual elements
  - Quickly scan; skip large segments of a table when searching

### BRIN Built-In Operators

- Date_minmax_ops
- Char_minmax_ops
- Float8_minmax_ops
- Timestamp_minmax_ops
- UUID_mixmax_ops
- Many more

# Challange: Choosing an Optimal Indexing Strategy

- Use a Hash Index
