-- Employees who earn same salary as others

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_name VARCHAR(50),
    salary INT
);

INSERT INTO employees (emp_id, emp_name, dept_name, salary) VALUES
(101, 'Sai',      'HR',      40000),
(102, 'Priya',    'HR',      42000),
(103, 'Charan',   'IT',      50000),
(104, 'Reddy',    'IT',      50000),   
(105, 'Nithesh',  'Finance', 41000); 

SELECT *
FROM employees e
WHERE e.salary IN (
    SELECT salary
    FROM employees
    GROUP BY salary
    HAVING COUNT(*) > 1
);

