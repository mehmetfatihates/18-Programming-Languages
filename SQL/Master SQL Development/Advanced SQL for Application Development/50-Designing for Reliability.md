- Database errors
- Error trapping
- Database not responding, timeouts and exponential backoff
- Connection pooling and bulk heads
- Monitoring and logging best practices
- Challange: When your Python application fails

# Database errors

- InterfaceError
- DatabaseError
- DataError
- OperationalError
- IntegrityError
- InternalError
- ProgrammingError
- NotSupportedError

### Interface and Database Errors

- Connection already closed
- Connection exception
- Connection does not exist
- Triggered action exception
- Invalid role specification

### Data and Operational Errors

- Numeric value out of range
- Invalid date format
- Division by zero
- Invalid SQL statement name

### Integrity and Internal Errors

- Not null violation
- Foreign key violation
- Modifying SQL data not permitted

### ProgrammingError

- Invalid schema name
- Syntax error
- Ambiguous column
- Feature not supported

# Error trapping

- 51-Error_trapping.ipynb

# Database not responding, timeouts and exponential backoff

### Connection Timeouts

- Databases have limited resources
- Resources can become exhausted
- Too busy responding to other requests to respond

### Headling Connection Error

- Not an error in application logic
- Resource allocation error
- Give the database a chance to release resources or finish other tasks

### Exponential Backoff

- Increase exponentially until maximum number of attemps

# Connection pooling and bulk heads

- More clients attempting to connect available connection data structures
- With a single pool of connections, all clients may fail
- Multiple pools can isolate workloads

#### Single Connection Pools and Multiple Connection Pools and Bulkheads

### Connection Pool Software

- PgBouncer
- Pgpool

# Monitoring and logging best practices

### Why Monitor and Log Events

- Understand resource utilization
- Capacity planning
- Diagnose problems
- Security

### Resource Utilization

- CPU
- Memory
- Cache hit rate
- Persistent storage

### Capacity Planning

- Current utilization
- Growth rates
- Project needs
- Autoscaling is difficult with stateful applications

### Diagnosing Problems

- Error handling with application
- Errors within the database
- Correlate events with other events

### Security

- Audit logs
- Record user activity
- Change sensitive data
- Changes to access controls and user permissions

# Challange: When your Python application fails

- try-except
- Exponential backoff
