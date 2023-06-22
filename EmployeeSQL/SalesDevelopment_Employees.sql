--List each employee in the Sales and Development departments
--including their employee number, last name, first name, and department name.
select * from employees;
select * from titles;
select * from departments;
select * from dept_emp;

select e.emp_no,e.last_name, e.first_name, s.dept_name
from employees e
join dept_emp d on e.emp_no = d.emp_no
join departments s on d.dept_no = s.dept_no
where s.dept_name IN ('Sales','Development')
;