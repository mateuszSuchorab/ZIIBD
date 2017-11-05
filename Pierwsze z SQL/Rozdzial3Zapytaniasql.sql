SELECT sysdate as "Date" from dual;
select employee_id , last_name, salary, Round((salary*1.155)) as "New Salary" from EMPLOYEES;
select employee_id , last_name, salary, Round((salary*1.155)) as "New Salary", Round((salary*0.155)) as "Increase" from EMPLOYEES;
select last_name as "Name", Length(last_name) as "Length" From EMPLOYEES where last_name Like 'J%' or last_name Like 'A%' or last_name Like 'M%';
select last_name as "Name", Length(last_name) as "Length" From EMPLOYEES where last_name like '&last_name%'  ;
select last_name as "Name", Length(last_name) as "Length" From EMPLOYEES where last_name like Upper('&last_name%' ) ;
select last_name,((TO_CHAR(sysdate, 'YYYY') - TO_CHAR(hire_date, 'YYYY'))*12) +(TO_CHAR(sysdate, 'MM') - TO_CHAR(hire_date, 'MM')) as Months_worked from EMPLOYEES;
select last_name, LPAD(salary,15,'$') as Salary from EMPLOYEES;
select RPAD(last_name|| ' ',Length(last_name)+(salary/1000),'*') as "Employees and ther salaries" from EMPLOYEES order by salary desc;
select last_name,((TO_CHAR(sysdate, 'YYYY') - TO_CHAR(hire_date, 'YYYY'))*52) +((TO_CHAR(sysdate, 'MM') - TO_CHAR(hire_date, 'MM'))*4) as tenure  from EMPLOYEES order by tenure desc;

