-- -- Data Analysis

-- -- list employee number, last name, first name, sex and salary
-- select
-- employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
-- from employees
-- join salaries 
-- on employees.emp_no = salaries.emp_no

-- -- list first name, last name, hire date for employees who were hired in 1986
-- select
-- employees.last_name, employees.first_name, employees.hire_date
-- from employees
-- where employees.hire_date >'1986-1-1' AND employees.hire_date< '1987-1-1'

-- -- list the manager of each dept: dept number, dept name, mgr's employee number, last name, first name
-- select
-- departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
-- from dept_manager
-- join employees
-- on dept_manager.emp_no = employees.emp_no
-- join departments
-- on dept_manager.dept_no = departments.dept_no

-- -- list the dept of each employee, employee number, last name, first name, dept name
-- select
-- dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
-- from dept_emp
-- join employees
-- on dept_emp.emp_no = employees.emp_no
-- join departments
-- on dept_emp.dept_no = departments.dept_no

-- -- list first name, last name, sex where first name = Hercules and last names start with B
-- select
-- employees.first_name, employees.last_name, employees.sex
-- from employees
-- where employees.first_name = 'Hercules' and employees.last_name like 'B%'

-- -- list all employees in Sales: employee number, last name, first name, dept name
-- select
-- dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
-- from dept_emp
-- join employees
-- on dept_emp.emp_no = employees.emp_no
-- join departments
-- on dept_emp.dept_no = departments.dept_no
-- where departments.dept_name = 'Sales'

-- -- list all in sales and Dev: employee number, last name, first name, dept name
-- select
-- dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
-- from dept_emp
-- join employees
-- on dept_emp.emp_no = employees.emp_no
-- join departments
-- on dept_emp.dept_no = departments.dept_no
-- where departments.dept_name = 'Sales' or departments.dept_name = 'Development'

-- -- descending order, list frequency count of employee last names(group by)
-- select employees.last_name, 
-- count(employees.last_name) as "last name frequency"
-- from employees
-- group by employees.last_name
-- order by "last name frequency" DESC;