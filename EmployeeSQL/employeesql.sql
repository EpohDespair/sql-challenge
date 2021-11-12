-- -- Employee SQL homework
-- -- Step 1: create tables for all 6 files

-- -- Employee table creation
-- create table employees(
	-- 	emp_no integer not null,
	-- 	emp_title_id varchar(250) not null,
	-- 	birth_date date not null,
	-- 	first_name varchar(250) not null,
	-- 	last_name varchar(250) not null,
	-- 	sex varchar(1) not null,
	-- 	hire_date date not null,
	-- 	primary key(emp_no)
-- );

-- -- check table headers, import data, check table again
-- select * from employees;

-- -- Salaries table creation
-- create table salaries(
-- 	emp_no integer not null,
-- 	salary integer not null,
-- 	foreign key(emp_no) References employees(emp_no)
-- );

-- -- check table headers, import data, check table again
-- select * from salaries;

-- -- dept_manager table creation
-- create table dept_manager(
-- 	dept_no varchar(250) not null,
-- 	emp_no integer not null,
-- 	foreign key(emp_no) References employees(emp_no)
-- );

-- -- check table headers, import data, check table again
-- select * from dept_manager

-- -- departments table creation
-- create table departments(
-- 	dept_no varchar(250) not null,
-- 	dept_name varchar(250) not null,
-- 	primary key(dept_no)
-- );

-- -- check table headers, import data, check table again
-- select * from departments

-- -- dept_emp table creation
-- create table dept_emp(
-- 	emp_no integer not null,
-- 	dept_no varchar(250) not null,
-- 	foreign key(emp_no) References employees(emp_no),
-- 	foreign key(dept_no) References departments(dept_no)
-- );

-- -- check table headers, import data, check table again
-- select * from dept_emp

-- -- title table creation
-- create table titles(
-- 	title_id varchar(250) not null,
-- 	title varchar(250) not null,
-- 	primary key(title_id)
-- );

-- -- check table headers, import data, check table again
-- select * from titles

-- -- adding foreign keys to dept_manager and employees tables bc I forgot
-- alter table employees
-- add foreign key(emp_title_id) references titles(title_id);

-- alter table dept_manager
-- add foreign key(dept_no) references departments(dept_no);
