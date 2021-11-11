create table departments (
	dept_no varchar(40) not null,
	dept_name varchar(200),
	primary key (dept_no)
);
select * from departments

create table titles(
	title_id varchar(30) not null,
	title varchar(200),
	primary key(title_id)
);
select * from titles

create table employees(
	emp_no int not null,
	emp_title varchar(200) not null,
	birth_date date,
	first_name varchar(200),
	last_name varchar(200),
	sex varchar(1),
	hire_date date,
	primary key(emp_no),
	foreign key (emp_title) references titles(title_id)
);
select * from employees

create table dept_employees(
	emp_no int not null,
	dept_no varchar(40) not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no),
	primary key (emp_no,dept_no)
);
select * from dept_employees

create table dept_manager(
	dept_no varchar(40) not null,
	emp_no int not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no),
	primary key (emp_no,dept_no)
);
select * from dept_manager

create table salaries(
	emp_no int not null,
	salary int,
	foreign key (emp_no) references employees(emp_no),
	primary key (emp_no)
);
select * from salaries



