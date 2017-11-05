select department_id from departments minus select department_id from employees where job_id like 'ST_CLERK';
select country_id, country_name from countries minus select country_id, country_name from countries natural join locations natural join departments;
select distinct job_id, department_id from employees  where department_id = 10 union all select distinct job_id, department_id from employees  where department_id = 50 union all select distinct job_id, department_id from employees  where department_id = 20 ;
select employee_id , job_id from employees intersect select employee_id , job_id from job_history;
select last_name, department_id, to_char(null) from employees union select to_char(null), department_id, department_name from departments;

