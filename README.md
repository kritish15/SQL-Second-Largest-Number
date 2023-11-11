# SQL Second Highest Salary Finder

This repository contains a simple SQL script that demonstrates the creation of a table (`emp`), insertion of sample data, and a query to find the second-highest salary from the 'emp' table. Additionally, there's an example of updating an existing salary in the dataset.

## Table Structure

The SQL script creates a table named `emp` with the following structure:

```sql
CREATE TABLE emp (
    id INT PRIMARY KEY,
    salary DECIMAL(10, 2) -- Adjust the precision and scale based on your requirements
);

Sample Data
The script inserts sample data into the 'emp' table:

INSERT INTO emp (id, salary) VALUES
(1, 50000.00),
(2, 60000.00),
(3, 45000.00),
(4, 70000.00),
(5, 55000.00);

SELECT MAX(salary) AS second_highest_salary
FROM emp
WHERE salary < (SELECT MAX(salary) FROM emp);

