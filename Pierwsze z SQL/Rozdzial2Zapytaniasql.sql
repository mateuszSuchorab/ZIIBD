select last_name, salary  from EMPLOYEES where salary <5000 or salary>12000;
select last_name, job_id, hire_date from EMPLOYEES where last_name = 'Matos' or last_name = 'Taylor' ORDER BY hire_date;
select last_name, department_id from EMPLOYEES where department_id = 20 or department_id= 50 order by last_name;
select last_name as Employee, salary as Monthly Salary  from EMPLOYEES where salary BETWEEN 5000 AND 12000;
select last_name, hire_date from EMPLOYEES where TO_CHAR(hire_date, 'YYYY') = 1994;
select last_name, job_id from EMPLOYEES where MANAGER_ID= null;
select last_name, job_id, COMMISSION_PCT from EMPLOYEES where COMMISSION_PCT IS NOT NULL order by COMMISSION_PCT;
select last_name, salary from EMPLOYEES where salary> &salary;
select employee_id , last_name , salary, department_id FROM employees where manager_id = &manager_id order by &orderBy; 
select last_name from EMPLOYEES where last_name LIKE '__a%';  
select last_name from EMPLOYEES where last_name LIKE '%a%' AND last_name LIKE '%e%';
select last_name,job_id, salary from EMPLOYEES where (job_id = 'SA_REP' or job_id = 'ST_CLERK') and salary !=2500 and salary != 3500 and salary != 7000;
select last_name as Employee, salary as "Month Salary", COMMISSION_PCT from EMPLOYEES where COMMISSION_PCT = '.2' ;



