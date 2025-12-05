CREATE TABLE employee_details (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT,
    dept_name VARCHAR(50),
    salary INT
);

INSERT INTO employee_details (emp_id, emp_name, dept_id, dept_name, salary) VALUES
(101, 'Amit', 1, 'HR', 10),
(102, 'Priya', 1, 'HR', 12),

(103, 'John', 2, 'IT', 20),
(104, 'Kiran', 2, 'IT', 18),

(105, 'Ravi', 3, 'Finance', 15),
(106, 'Sara', 3, 'Finance', 14),

(107, 'David', 4, 'Sales', 30),
(108, 'Meera', 4, 'Sales', 10);



SELECT dept_name
FROM employee_details
GROUP BY dept_id, dept_name
HAVING SUM(salary) > 25;
