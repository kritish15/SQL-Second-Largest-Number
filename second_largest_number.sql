-- Create the emp table
CREATE TABLE emp (
    id INT PRIMARY KEY,
    salary DECIMAL(10, 2) -- Adjust the precision and scale based on your requirements
);

-- Insert some sample data
INSERT INTO emp (id, salary) VALUES
(1, 50000.00),
(2, 60000.00),
(3, 45000.00),
(4, 70000.00),
(5, 55000.00);

-- Query to find the second-highest salary
SELECT MAX(salary) AS second_highest_salary
FROM emp
WHERE salary < (SELECT MAX(salary) FROM emp);

UPDATE emp
SET salary = 82000.00
WHERE id =1;