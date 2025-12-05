CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    dept_name VARCHAR(50),
    salary INT
);


INSERT INTO employees (emp_id, emp_name, dept_id, dept_name, salary) VALUES
(201, 'Sai', 1, 'HR', 32000),
(202, 'Nithesh', 1, 'HR', 36000),
(203, 'Priya', 2, 'IT', 45000),
(204, 'Charan', 2, 'IT', 47000),
(205, 'Reddy', 3, 'Finance', 40000);


SELECT e.*
FROM employees e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.dept_id = e.dept_id
);
