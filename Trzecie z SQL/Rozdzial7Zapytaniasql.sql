select last_name, hire_date from employees where DEPARTMENT_ID=(select DEPARTMENT_ID from EMPLOYEES where last_name like '&enter_name') and last_name <> '&enter_name' ;
select employee_id, last_name, salary from EMPLOYEES where salary>(select avg(salary) from EMPLOYEES) order by salary ;
select employee_id, last_name from EMPLOYEES where DEPARTMENT_ID in ( select DEPARTMENT_ID FROM employees  WHERE last_name like '%u%'  ) ;
select last_name, DEPARTMENT_ID, job_id from EMPLOYEES where DEPARTMENT_ID in ( select DEPARTMENT_Id from DEPARTMENTS where location_id =1700);
select last_name, salary from EMPLOYEES where MANAGER_ID = ( select employee_id from EMPLOYEES where last_name like 'King');
select department_id, last_name, job_id from EMPLOYEES where DEPARTMENT_ID = (select department_id FROM departments WHERE DEPARTMENT_NAME like 'Executive');
select employee_id, last_name, salary from EMPLOYEES where DEPARTMENT_ID in ( select DEPARTMENT_ID FROM employees  WHERE last_name like '%u%'  ) and salary > (select avg(salary) from EMPLOYEES);

















