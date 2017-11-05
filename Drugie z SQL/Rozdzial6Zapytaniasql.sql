select LOCATIONS.LOCATION_ID, LOCATIONS.STREET_ADDRESS, LOCATIONS.CITY, LOCATIONS.STATE_PROVINCE, COUNTRIES.COUNTRY_NAME from LOCATIONS join COUNTRIES on LOCATIONS.country_id = COUNTRIES.country_id;
select EMPLOYEES.last_name, EMPLOYEES.department_Id, DEPARTMENTS.DEPARTMENT_NAME from EMPLOYEES join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID=DEPARTMENTS.DEPARTMENT_ID;
select EMPLOYEES.last_name,EMPLOYEES.Job_id, EMPLOYEES.department_Id, DEPARTMENTS.DEPARTMENT_NAME from EMPLOYEES join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID=DEPARTMENTS.DEPARTMENT_ID join LOCATIONS on LOCATIONS.LOCATION_ID = DEPARTMENTS.LOCATION_ID where LOCATIONS.CITY = 'Toronto';
select emp1.last_name as "Employee",emp1.EMPLOYEE_ID as "EMP#", emp2.last_name as "Menager",emp2.EMPLOYEE_ID as "Mgr#" from employees emp1, employees emp2 where emp2.employee_id = emp1.manager_id ;
select emp1.last_name as "Employee",emp1.EMPLOYEE_ID as "EMP#", emp2.last_name as "Menager",emp2.EMPLOYEE_ID as "Mgr#" from employees emp1 left join employees emp2 on emp2.employee_id = emp1.manager_id order by emp1.EMPLOYEE_ID;
select emp1.department_id as "Department", emp1.last_name as "Employee", emp2.last_name as "Colleague" from employees emp1, employees emp2 where emp1.department_id = emp2.department_id and emp1.last_name <> emp2.last_name order by emp1.DEPARTMENT_ID;
describe JOB_Grades;
select  emp1.last_name,emp1.JOB_ID, dep.DEPARTMENT_NAME , emp1.SALARY, jobg.GRADE_LEVEL from employees emp1 join DEPARTMENTS dep on emp1.DEPARTMENT_ID = dep.DEPARTMENT_ID join JOB_GRADES jobg on (emp1.salary between jobg.LOWEST_SAL  and jobg.HIGHEST_SAL)  order by emp1.SALARY;
select emp1.last_name, emp1.hire_date from EMPLOYEES emp1, EMPLOYEES emp2 where emp2.last_name ='Davies' and emp1.hire_date > emp2.hire_date;
select emp2.last_name, emp2.hire_date, emp1.last_name, emp1.hire_date from employees emp1 join EMPLOYEES emp2 on emp1.EMPLOYEE_ID= emp2.MANAGER_ID where emp2.hire_date<emp1.hire_date order by emp1.hire_date;



















