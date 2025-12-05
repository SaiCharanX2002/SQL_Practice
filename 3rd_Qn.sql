-- Employees who are having highest salary in a company

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_name VARCHAR(50),
    salary INT
);


INSERT INTO employees (emp_id, emp_name, dept_name, salary) VALUES
(101, 'Charan', 'HR', 30000),
(102, 'Priya', 'HR', 35000),
(103, 'Nithesh', 'IT', 45000),
(104, 'Sai', 'IT', 47000),
(105, 'Reddy', 'Finance', 42000)

SELECT *
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

