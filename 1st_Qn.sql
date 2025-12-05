SELECT d.dept_name
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING COUNT(*) > (
    SELECT COUNT(*)
    FROM employees e2
    JOIN departments d2 ON e2.dept_id = d2.dept_id
    WHERE d2.dept_name = 'HR'
);