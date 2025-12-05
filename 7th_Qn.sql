CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_name VARCHAR(50),
    salary INT
);

INSERT INTO employees (emp_id, emp_name, dept_name, salary) VALUES
(101, 'Sai', 'HR', 40000),
(102, 'Priya', 'HR', 42000),
(103, 'Charan', 'IT', 50000),
(104, 'Reddy', 'IT', 55000),   
(105, 'Nithesh', 'Finance', 45000);

SELECT *
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE salary < (SELECT MAX(salary) FROM employees)
);

