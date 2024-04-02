--CREATE DATABASE <database_name>


--CREATE DATABASE customer_db 
--WITH 
--  OWNER = postgres 
--  LC_COLLATE = 'C' 
--  LC_CTYPE = 'C' 
--  TABLESPACE = pg_default 
--  CONNECTION LIMIT = -1;
--\l customer_db
-- \c customer_db



--the command to connect to the expense_db database schema


-- To delete a database, we can use the DROP DATABASE command. This will permanently delete the database and all of its contents.
-- DROP DATABASE <database_name>;
-- DROP DATABASE IF EXISTS <database_name>;



-- For example, to delete a database named customer_db, the command would be as follows:
-- SELECT '\n' AS " "; -- Adding new line
-- DROP DATABASE customer_db; -- DROP DATABASE command



-- The DROP DATABASE customer_db; command will return an error as the database does not exist.
-- The DROP DATABASE IF EXISTS customer_db; command will not return an error. Instead, we’ll see a notice like NOTICE: database "customer_db" does not exist, skipping.


-- To rename a database, use the ALTER DATABASE command with the RENAME clause.
-- ALTER DATABASE <old_name> RENAME TO <new_name>;  
-- ALTER DATABASE customer_db RENAME TO client_db;





-- DROP TABLE <table_name>; 
-- DROP TABLE IF EXISTS <table_name>;

-- ALTER TABLE <old_name> RENAME TO <new_name>;

-- To add a column to a table, use the ALTER TABLE command with the ADD COLUMN clause.
--ALTER TABLE 
--  <table_name> 
--ADD COLUMN 
--  <column_name> <datatype>;



-- Dropping Columns
-- ALTER TABLE <table_name> 
--  DROP COLUMN <column_name>;
--  DROP COLUMN IF EXISTS phone_number;



-- To set a default value for a column, use the ALTER TABLE command with the SET DEFAULT clause.
-- ALTER TABLE
--  Orders
--ALTER COLUMN
--  status
--SET 
--  DEFAULT 'pending';



-- We can also remove the default value for a column using the ALTER TABLE command with the DROP DEFAULT clause.
--ALTER TABLE 
--  <table_name> 
--ALTER COLUMN 
--  <column_name> DROP DEFAULT;



--ALTER TABLE
--  Orders
--ALTER COLUMN
--  status DROP DEFAULT;

-- To rename a column, use the ALTER TABLE command with the RENAME COLUMN clause.
-- ALTER TABLE 
--  <table_name> RENAME COLUMN <old_column_name> TO <new_column_name>;



-- Adding constraints
-- Constraints are rules that restrict the data stored in a table. For example, a UNIQUE constraint ensures that all the values in a certain column are unique, while a NOT NULL constraint ensures that a certain column cannot have a null value. To add a constraint to a column, use the ALTER TABLE command with the ADD CONSTRAINT clause.

--ALTER TABLE
--  Customer
--ADD
--  CONSTRAINT customer_pk PRIMARY KEY (id); -- Adding PRIMARY KEY

--ALTER TABLE
--  Customer
--ADD
--  CONSTRAINT unique_email UNIQUE (email); -- Adding UNIQUE constraint

--ALTER TABLE
--  Customer
--ALTER COLUMN
--  id
--SET
--  NOT NULL; -- Adding NOT NULL constraint

--ALTER TABLE 
--  Customer 
--ALTER COLUMN 
--  dob 
--SET 
  DEFAULT '2000-01-01'; -- Adding DEFAULT contstraint

--ALTER TABLE
--  Customer
--ADD
--  CONSTRAINT check_customer_id CHECK (id > 0); -- Adding CHECK constraint

--ALTER TABLE
--  Users
--ADD
--  CONSTRAINT user_customer_fk FOREIGN KEY (id) REFERENCES Customer (id); 
--- Adding FOREIGN KEY constraint



--Dropping a constraint
--ALTER TABLE 
--  <table_name> DROP CONSTRAINT <constraint_name>; 


-- For example, to remove the unique_email constraint from the Customer table, the command would be:
--ALTER TABLE
--  Customer DROP CONSTRAINT unique_email;



--CREATE TABLE Product (
--    product_id INTEGER,
--    name VARCHAR(255),
--    price DECIMAL,
--    in_stock BOOLEAN);

--INSERT INTO Product (product_id, name, price, in_stock)

--VALUES (1, 'iPhone', 999.99, TRUE),
--       (2, 'MacBook Pro', 1299.99, FALSE),
--       (3, 'iPad', 799.99, TRUE);   

--SELECT * FROM Product WHERE in_stock = TRUE;




--CREATE TABLE <table_name> (
--    <column_name> TIMESTAMP);

--SELECT NOW();


-- Monetary data types are used for storing currency values. The two monetary data types in PostgreSQL are Money and SmallMoney.
--Money: It stores currency values. These values are stored as the number of cents. It takes 8 bytes of storage.
--SmallMoney: This data type is similar to Money but stores values within a smaller range. The SmallMoney values are stored as the number of cents. It takes 4 bytes of storage.


--CREATE TABLE Product (
--   product_id INTEGER,
--    name VARCHAR(255),
--    price MONEY);

--INSERT INTO Product (product_id, name, price)
--VALUES (1, 'Phone', 999.99), 
--       (2, 'MacBook Pro', 1299.99),
--       (3, 'iPad', 799.99);

--SELECT * FROM Product;



-- CREATE TABLE <table_name> (
--    <column_name> <data_type>[]);


CREATE TABLE Product (
	id  INTEGER PRIMARY KEY, 
	name TEXT UNIQUE,
	price NUMERIC(7,2),
  hashtag VARCHAR(50)[],
	quantity INTEGER
);

INSERT INTO
  Product (id, name, price, hashtag, quantity)
VALUES
  (
    1,
    'iPhone',
    999.99,
    ARRAY ['Apple','iPhone','Smartphone'],
    5
  ), 
  (
    2,
    'iPad',
    399.99,
    ARRAY ['Apple','iPad','Tablet'],
    12
  );

SELECT id, name, price, quantity, hashtag FROM Product;

SELECT '\n' AS " "; -- Adding new line

SELECT 
  hashtag[1] AS "tag #1", 
  hashtag[2] AS "tag #2", 
  hashtag[3] AS "tag #3"
FROM 
  Product 
WHERE 
  id = 2; 




--SELECT
--  department,
--  COUNT(*) as "Number of Employees"
--FROM  Employee
--GROUP BY  department
--HAVING COUNT(*) > 1;


--SELECT
--  department,
--  COUNT(DISTINCT salary)
--FROM
--  Employee
--GROUP BY
--  department;





--SELECT
--  3 + 4 as Sum,
--  5 - 2 as Diff,
--  6 * 8 as Mul,
--  10 / 2 as Div,
--  8 % 3 as Mod;



-- =, !=, >, <, <=, >=, 

--Tip: The LIKE operator is case-sensitive, To make the search case-insensitive, we can use the "ILIKE" operator instead.


--WHERE
--  age BETWEEN 22 AND 24; -- BETWEEN

--WHERE
--  city IN ('New York', 'Boston', 'Los Angeles');
--This statement selects all the customers from the table who live in either 'New York', 'Boston', or 'Los Angeles'

--WHERE
--  NOT gender = 'M';

-- The ANY logical operator compares a value to each value in a list or returned by a query. The ANY operator returns TRUE if at least one value in the subquery meets the condition

--SELECT *
--FROM Customer
--WHERE gender = 'M' AND age > ANY ('{22, 23}'); -- ANY operator


-- SELECT  *
-- FROM  Customer
-- WHERE  age < ANY ( SELECT AVG (age) FROM Customer);


-- SELECT  *
--FROM Customer
--WHERE gender = 'M' AND age > ALL ('{22, 23}'); -- ALL operator
-- In summary, this query retrieves data from the Customer table, specifically selecting male customers whose age exceeds both 22 and 23. It leverages the ALL operator to ensure that the age condition holds true for all values in the specified array.


--Inserting specific columns from another table
INSERT INTO
  Person (first_name, last_name)
SELECT
  first_name,
  last_name
FROM
  Employee;
 
-- The INSERT statement will only insert the first_name and last_name columns from the “Employee” table into the person table.



UPDATE
  Employee
SET
  salary = 15000,
  department = 'Sales'
WHERE
  name = 'John';
  
  
UPDATE
  Employee
SET
  salary = salary * 1.1
WHERE
  department = 'IT';
  
  



-- Using the ON UPDATE CASCADE option
--If we want to update all of the data from a table and all of the tables that depend on those tables, we can define the ON UPDATE CASCADE option in the FOREIGN KEY constraint, as given below:

--ALTER TABLE Manager 
--  ADD CONSTRAINT emp_mgr_fk FOREIGN KEY (emp_id) REFERENCES Employee (id)
--  ON UPDATE CASCADE;


--The ALTER TABLE command adds a constraint for the foreign key relationship between the Employee and Manager tables. This constraint specifies that any rows in the Employee table that reference a row in the Manager table must have an id value that matches one of the values in the Manager table. The ON UPDATE CASCADE clause specifies that any rows in the Manager table that are updated will also result in updating any matching rows in the Employee table.



--`ON UPDATE CASCADE` and `ON DELETE CASCADE` are clauses used in SQL to define referential actions that are performed on related records in a table when certain changes occur in another table.

--1. `ON UPDATE CASCADE`:
--   - This clause is used when a foreign key relationship exists between two tables.
--   - When a record in the referenced (parent) table is updated, the corresponding records in the referencing (child) table are automatically updated to reflect the changes made to the referenced record.
--   - For example, if you have a foreign key relationship between a `Customers` table and an `Orders` table, where each order is associated with a customer, and you have defined `ON UPDATE CASCADE` on the foreign key constraint, if you update the primary key of a customer in the `Customers` table, all corresponding customer IDs in the `Orders` table will be automatically updated to match the new customer ID.

--2. `ON DELETE CASCADE`:
--   - This clause is also used when a foreign key relationship exists between two tables.
--   - When a record in the referenced (parent) table is deleted, the corresponding records in the referencing (child) table are automatically deleted.
--   - Continuing with the previous example, if you have `ON DELETE CASCADE` defined on the foreign key constraint between `Customers` and `Orders`, when you delete a customer record from the `Customers` table, all associated orders in the `Orders` table for that customer will be automatically deleted as well.

--These clauses help to maintain referential integrity in the database by ensuring that related records are updated or deleted appropriately when changes occur in the referenced table.




-- Create the Customers table
--CREATE TABLE Customers (
--    CustomerID INT PRIMARY KEY,
--    Name VARCHAR(100));

-- Create the Orders table with a foreign key constraint referencing Customers
--CREATE TABLE Orders (
--    OrderID INT PRIMARY KEY,
--    CustomerID INT,
--    OrderDate DATE,
--    TotalAmount DECIMAL(10, 2),
--    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
--    ON UPDATE CASCADE
--    ON DELETE CASCADE);



-- We have a `Customers` table with `CustomerID` as the primary key.
-- We have an `Orders` table with `OrderID` as the primary key and a foreign key constraint `CustomerID` referencing the `CustomerID` column in the `Customers` table.
-- `ON UPDATE CASCADE` is specified on the foreign key constraint, which means if a `CustomerID` in the `Customers` table is updated, all corresponding `CustomerID` values in the `Orders` table will be updated automatically.
-- `ON DELETE CASCADE` is also specified, which means if a customer record is deleted from the `Customers` table, all corresponding orders for that customer will be automatically deleted from the `Orders` table.

--These clauses ensure that the data integrity is maintained in the database by automatically handling updates and deletions in related tables.



--SELECT  * FROM Employee LIMIT 2 OFFSET 5;
































