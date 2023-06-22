--List the frequency counts, in descending order, of all the employee last 
--names (that is, how many employees share each last name).
select *
from employees;

SELECT last_name, COUNT(*) AS "duplicate count"
FROM employees
GROUP BY last_name
ORDER BY "duplicate count" DESC;
