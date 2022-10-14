- Understanding schema changes
- Ad hoc scripts for schema chages
- Automed schema migration with Flyway
- Automated schema migration with Liquibase
- Challange

# Understanding schema changes

### Databases Schema

- Database structures change over time
- New tables, columns, indexes and so on
- Multiple environments, such as development, test and production

### Data Changes

- Reference data updates
- Bulk updates

### Typical Commands

- CREATE/DROP TABLE
- ALTER TABLE ... ADD/DROP CONSTRAINT
- INSERT
- UPDATE

### Challenges

- Incremental changes
- Need to execute updates in sequence
- Tracking versions across environments
- Rolling back when error in update
- Database and code changes need to be kept in sync

### Methods

- Manual scripts
- Automated database refactoring tools

# Ad hoc scripts for schema chages

### Scripting Database Changes

- Initial set of data definition language (DDL) commands
- Set of changes in a single script or set of scripts executed as a unit

### Examples Schema Changes

- Adding new tables
- Adding new tables and reference data
- Adding or dropping columns
- Adding or dropping constraints

### What can Go Wrong?

- Syntax errors in DDL
- Name conflicts
- Constraint violations
- Resource errors, for example, insufficient disk space
- Application logic errors
- Partial execution

### Good Practices

- Plan for executing multiple scripts
- Plan for rolling back changes
- Track changes to environments
- Implement version control

# Automed schema migration with Flyway

### Flyway

- Version control for database schemas
- SQL scripts
- Migrate database with code updates
- Detect inconsistent and failed migrations

### Use Cases

- Schema changes
- Reference data changes
- Bulk data changes

### Deployment

- Command line
- API
- Maven
- Gradle

# Automated schema migration with Liquibase

### Liquibase: liquibase.org

- Version control for database schemas
- SQL,XML,JSON,YAML
- Generates database-specific SQL
- Abstracts database implementation details

### Mechanisms

- Changelogs-ledger of changes
- Tracking tables- modifications modeled with changesets

### Basic Sequence

- Create changelog
- Add changeset
- Deploy changelog
- Check database

### Deployments

- Command line
- Ant
- Maven
- Spring
- JEE CDI

# Challange

- ALTER TABLE ... ADD COLUMN to add export_code
- 10 INSERT statements with product data
- UPDATE statement to set export_code to 'Unrestricted' WHERE export_code IS NULL
