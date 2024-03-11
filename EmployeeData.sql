-- I created a table called EmployeeDemographics
CREATE TABLE EmployeeDemographics(
    EmployeeID int,
    FirstName varchar(50),
    LastName varchar(50),
    Age int,
    Gender varchar(50)
)


-- I created a table called EmployeeSalary
CREATE TABLE EmployeeSalary(
    EmployeeID int,
    JobTitle varchar(50),
    Salary int
)


-- I inserted data into the EmployeeDemographics table
INSERT INTO EmployeeDemographics (EmployeeID, FirstName, LastName, Age, Gender) VALUES
    (1001, 'John', 'Doe', 30, 'Male'),
    (1002, 'Jane', 'Smith', 28, 'Female'),
    (1003, 'Michael', 'Johnson', 35, 'Male'),
    (1004, 'Emily', 'Davis', 26, 'Female'),
    (1005, 'David', 'Lee', 32, 'Male'),
    (1006, 'Sarah', 'Wilson', 29, 'Female'),
    (1007, 'Mark', 'Anderson', 33, 'Male'),
    (1008, 'Jessica', 'Brown', 27, 'Female'),
    (1009, 'Michaela', 'Martinez', 31, 'Female'),
    (1010, 'Christopher', 'Taylor', 34, 'Male'),
    (1011, 'Lauren', 'Harris', 25, 'Female'),
    (1012, 'Kevin', 'Clark', 30, 'Male'),
    (1013, 'Rachel', 'Thomas', 28, 'Female'),
    (1014, 'Steven', 'Walker', 35, 'Male'),
    (1015, 'Michelle', 'Young', 29, 'Female'),
    (1016, 'Justin', 'King', 26, 'Male'),
    (1017, 'Brittany', 'Scott', 31, 'Female'),
    (1018, 'Andrew', 'Green', 33, 'Male'),
    (1019, 'Nicole', 'Evans', 27, 'Female'),
    (1020, 'Ryan', 'Allen', 29, 'Male'),
    (1021, 'Kimberly', 'Baker', 32, 'Female'),
    (1022, 'Daniel', 'Gonzalez', 30, 'Male'),
    (1023, 'Christina', 'Nelson', 28, 'Female'),
    (1024, 'Brandon', 'Carter', 35, 'Male'),
    (1025, 'Samantha', 'Wright', 26, 'Female'),
    (1026, 'Joshua', 'Lopez', 33, 'Male'),
    (1027, 'Amanda', 'Hill', 31, 'Female'),
    (1028, 'Tyler', 'Perez', 27, 'Male'),
    (1029, 'Emily', 'Roberts', 29, 'Female'),
    (1030, 'Jacob', 'Hall', 25, 'Male'),
    (1031, 'Megan', 'Young', 34, 'Female'),
    (1032, 'Alexander', 'Lewis', 28, 'Male'),
    (1033, 'Hannah', 'Adams', 30, 'Female'),
    (1034, 'Matthew', 'Johnson', 33, 'Male'),
    (1035, 'Katherine', 'Moore', 31, 'Female'),
    (1036, 'William', 'Hernandez', 27, 'Male'),
    (1037, 'Emma', 'Barnes', 29, 'Female'),
    (1038, 'Joseph', 'Garcia', 32, 'Male'),
    (1039, 'Olivia', 'Wilson', 30, 'Female'),
    (1040, 'Christopher', 'Parker', 28, 'Male'),
    (1041, 'Madison', 'Russell', 35, 'Female'),
    (1042, 'Joshua', 'Peterson', 26, 'Male'),
    (1043, 'Elizabeth', 'Cook', 33, 'Female'),
    (1044, 'Jonathan', 'Morris', 31, 'Male'),
    (1045, 'Alyssa', 'Murphy', 27, 'Female'),
    (1046, 'David', 'Turner', 29, 'Male'),
    (1047, 'Samantha', 'Perry', 32, 'Female'),
    (1048, 'Michael', 'Powell', 30, 'Male'),
    (1049, 'Jennifer', 'Hughes', 28, 'Female'),
    (1050, 'Robert', 'Foster', 35, 'Male');

-- I inserted data into the EmployeeSalary table
INSERT INTO EmployeeSalary (EmployeeID, JobTitle, Salary) VALUES
    (1001, 'Software Engineer', 80000),
    (1002, 'Marketing Manager', 75000),
    (1003, 'Data Scientist', 90000),
    (1004, 'Sales Associate', 60000),
    (1005, 'Project Manager', 85000),
    (1006, 'HR Specialist', 70000),
    (1007, 'Financial Analyst', 82000),
    (1008, 'Graphic Designer', 65000),
    (1009, 'Accountant', 75000),
    (1010, 'Customer Service Representative', 55000),
    (1011, 'Operations Manager', 95000),
    (1012, 'Business Analyst', 80000),
    (1013, 'Executive Assistant', 60000),
    (1014, 'Systems Administrator', 85000),
    (1015, 'Legal Assistant', 70000),
    (1016, 'Quality Assurance Analyst', 75000),
    (1017, 'Retail Sales Associate', 50000),
    (1018, 'Network Engineer', 90000),
    (1019, 'Human Resources Coordinator', 65000),
    (1020, 'Software Developer', 82000),
    (1021, 'Marketing Coordinator', 70000),
    (1022, 'Data Analyst', 75000),
    (1023, 'Sales Manager', 60000),
    (1024, 'Product Manager', 85000),
    (1025, 'Customer Support Specialist', 55000),
    (1026, 'IT Manager', 95000),
    (1027, 'Financial Advisor', 80000),
    (1028, 'Web Developer', 70000),
    (1029, 'Administrative Assistant', 75000),
    (1030, 'Technical Support Specialist', 50000),
    (1031, 'Marketing Specialist', 90000),
    (1032, 'Account Manager', 65000),
    (1033, 'Project Coordinator', 82000),
    (1034, 'Business Development Manager', 70000),
    (1035, 'Database Administrator', 75000),
    (1036, 'Sales Representative', 60000),
    (1037, 'Operations Coordinator', 85000),
    (1038, 'Financial Controller', 70000),
    (1039, 'Recruiter', 75000),
    (1040, 'Executive Director', 80000),
    (1041, 'Customer Service Manager', 55000),
    (1042, 'Marketing Director', 95000),
    (1043, 'HR Manager', 80000),
    (1044, 'Account Executive', 60000),
    (1045, 'Operations Assistant', 85000),
    (1046, 'Business Consultant', 70000),
    (1047, 'Office Manager', 75000),
    (1048, 'Sales Coordinator', 50000),
    (1049, 'Technical Writer', 90000),
    (1050, 'Financial Planner', 65000);

-- I selected all to retrive all records of EmployeeDemographics table
SELECT * 
FROM EmployeeDemographics

-- I selected all to retrive all records of EmployeeSalary table
SELECT * 
FROM EmployeeSalary

-- To retrieve employees with an age greater than 30 from the EmployeeDemographics table.
SELECT *
FROM EmployeeDemographics
WHERE Age > 30

--Concatenation and aliasing
SELECT employeeid, firstname || ' ' || lastname AS FullName, age, gender
FROM EmployeeDemographics

SELECT * 
FROM EmployeeSalary


-- This query will display employees who have a Managerial job title
SELECT * 
FROM EmployeeSalary
WHERE jobtitle LIKE '%Manager%'


SELECT *
FROM EmployeeSalary

-- This will filter out particular staff using their job title
SELECT *
FROM EmployeeSalary
WHERE Jobtitle IN ('Software Engineer', 'Software Developer', 'Database Administrator')


-- Inner Join
SELECT *
FROM EmployeeDemographics
    INNER JOIN EmployeeSalary ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT ED.employeeID, ED.firstname || ' ' || ED.lastname AS FullName, ED.age, ES.salary
FROM employeedemographics ED
	INNER JOIN employeesalary ES ON ED.employeeID = ES.employeeID



SELECT MIN(Age)
FROM employeedemographics 


SELECT MAX(Salary), MIN(Salary)
FROM employeesalary

-- To get Employees with the highest and lowest salary, I used IN instead of SELECT *
--WHERE SALARY = 95000 AND SALARY = 50000
SELECT *
FROM employeesalary
WHERE SALARY IN(95000, 50000)


-- I used disctinct because I just want to get the genders 
SELECT DISTINCT (Gender) 
FROM employeedemographics


-- I used groupby because I want to get the genders and their count
SELECT Gender, Count(Gender) AS CountOfGender
FROM employeedemographics
GROUP BY Gender

-- I used groupby because I want to get the JobTitle and their count
SELECT JobTitle, Count(JobTitle) AS CountOfGender
FROM employeesalary
GROUP BY JobTitle


SELECT Gender, Count(Gender) AS CountOfGender
FROM employeedemographics
GROUP BY Gender
Order by Count(Gender) DESC

-- CASE Statement to show salary range
SELECT EmployeeID, Salary,
CASE
	WHEN Salary < 50000 THEN 'Low'
	WHEN Salary BETWEEN 50000 AND 80000 THEN 'Medium'
	ELSE 'High'
    END AS SalaryRange
FROM
    EmployeeSalary


SELECT JobTitle
FROM employeesalary


-- In a case where you want to increase Salary
SELECT EmployeeID, Salary, JobTitle,
CASE
	WHEN JobTitle = 'Software Engineer' THEN Salary + (Salary * 0.10)
	WHEN JobTitle = 'Data Scientist' THEN Salary + (Salary * 0.20)
	ELSE Salary + (Salary * 0.05)
END AS SalaryAfterRaise

FROM EmployeeSalary













