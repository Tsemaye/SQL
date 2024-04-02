--Option Shift Q

CREATE DATABASE expense_db
WITH
OWNER = postgres
ENCODING = 'UTF8'
TEMPLATE = template0
TABLESPACE = pg_default
CONNECTION LIMIT = -1;

SELECT datname FROM pg_database;
--datname: This is the column we are selecting from the table 
--pg_database: It represents the name of each database in the PostgreSQL server.



-- For Table Expense
-- expense_id (primary key, data type: integer)
--expense_date (data type: date)
--amount (data type: money),
--category_id (data type: integer)
--description (data type: text)


CREATE TABLE Expense(
	expense_id INT PRIMARY KEY,
	expense_date DATE,
	amount MONEY,
	category_id INT,
	description TEXT
)


SELECT * FROM Expense


--Category Table
--category_id (primary key, data type: SERIAL)
--category_name (data type: VARCHAR)
--budget (data type: MONEY)


CREATE TABLE category(
	category_id INT PRIMARY KEY,
	category_name VARCHAR,
	budget MONEY
)

SELECT * FROM Category


-- I'd add a foreign key constraint on the category_id in the Expenses table

ALTER TABLE expense
ADD CONSTRAINT fk_category_id
FOREIGN KEY (category_id) REFERENCES category(category_id)

SELECT * FROM Expense


INSERT INTO category VALUES
(1, 'Church', 1000),
(2, 'Food', 700),
(3, 'Transportation', 300),
(4, 'Clothes', 100),
(5, 'Entertainment', 100),
(6, 'Charity', 500),
(7, 'Savings', 3000)

SELECT * FROM Category

SELECT SUM(budget) AS Total FROM Category


	
INSERT INTO expense VALUES
(101, '2024-04-28', 570, 1, 'Church Tithe'),
(102, '2024-05-01', 100, 1, 'Church Offering'),
(103, '2024-05-03', 20, 1, 'Bought some clothes'),
(104, '2024-05-07', 7, 1, 'Bolt Trip for wedding'),
(105, '2024-05-12', 35, 1, 'Took myself out on my monthly date'),
(106, '2024-05-08', 100, 1, 'Church Offering'),
(107, '2024-05-10', 150, 1, 'Prepared food for people on the street');

SELECT * FROM Expense

UPDATE expense
SET category_id = 
    CASE 
        WHEN expense_id IN (101, 102, 106) THEN 1
        WHEN expense_id = 103 THEN 4
        WHEN expense_id = 104 THEN 3
        WHEN expense_id = 105 THEN 5
        WHEN expense_id = 107 THEN 6
        ELSE category_id  -- To keep existing values unchanged
    END; 

SELECT * FROM Expense


INSERT INTO expense VALUES
(108, '2024-04-28', 3000, 7, 'Monthly Savings')


-- To see all church expenses

SELECT SUM(amount)
FROM expense
WHERE category_id = 1 AND expense_date BETWEEN '2024-04-28' AND '2024-05-28'

-- OR BELOW TO GET USED TO SUBQUERYIG

SELECT SUM(amount)
FROM expense
WHERE category_id = (SELECT category_id FROM category WHERE category_name = 'Church')
AND expense_date BETWEEN '2024-04-28' AND '2024-05-28'

















