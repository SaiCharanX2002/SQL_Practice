CREATE TABLE employee_details (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_name VARCHAR(50),
    salary INT
);

INSERT INTO employee_details (emp_id, emp_name, dept_name, salary) VALUES
(701, 'Sai', 'HR', 30000),
(702, 'Priya', 'HR', 32000),

(703, 'Charan', 'IT', 40000),
(704, 'Reddy', 'IT', 42000),

(705, 'Nithesh', 'Finance', 38000),
(706, 'Meera', 'Finance', 37000),

(707, 'David', 'Sales', 45000),
(708, 'Kiran', 'Sales', 46000);

SELECT dept_name
FROM employee_details
GROUP BY dept_name
HAVING SUM(salary) > (
    SELECT SUM(salary)
    FROM employee_details
    WHERE dept_name = 'IT'
);
