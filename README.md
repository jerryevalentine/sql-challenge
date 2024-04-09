# ERD
The ERD was created with PGAdmin.  I found out towards the end of the assignment that PGAdmin ERD's have issues.  However, I think these did not impact the assignment.

The ERD does not explicitly show foreign keys.  This would be helpful to make sure that the foreign keys exist and make sense from a diagram perspective.  
Instead, I had to query the information schema to ensure that the keys were correct.

# sql-challenge-analysis
This script contains the eight analysis questions.

# sql-challenge-schemata

This script contains the query that creates the database, including tables, foreign keys and primary keys.

* information_schema_order_by_columns.sql - this query extracts table, column and contraint information and orders by columns.
* Information_schema_order_by_columns.csv - the data from above query.
* Information_schema_order_by_tables.csv - this query extracts table, column and contraint information and orders by tables, not columns.
* information_schema_order_by_tables.sql - data from above query.

From my understanding "dept_manager" and "dept_emp" need two foreign keys to other tables, but both columns are needed to form a composite primary key.
