CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    dept_name VARCHAR(50),
    salary INT
);

INSERT INTO employees (emp_id, emp_name, dept_id, dept_name, salary) VALUES
(101, 'Sai', 1, 'HR', 40000),
(102, 'Priya', 1, 'HR', 42000),
(103, 'Charan', 1, 'HR', 41000),   
(104, 'Reddy', 2, 'IT', 50000),
(105, 'Nithesh', 2, 'IT', 47000),   
(106, 'Kiran', 3, 'Finance', 39000);

SELECT e.*
FROM employees e
WHERE e.dept_id IN (
    SELECT dept_id
    FROM employees
    GROUP BY dept_id
    HAVING COUNT(*) > 2
);
