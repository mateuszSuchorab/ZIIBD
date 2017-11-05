select max(salary),min(salary),sum(salary),avg(salary) from employees;
select job_id, max(salary), min(salary), sum(salary), avg(salary) from employees group by job_id;
select job_id, count(*) from employees group by job_id;
select job_id, count(*) from employees where job_id = '&job_id' group by job_id ;
select  count(distinct manager_id) as "Number of Managers" from employees ; 
select (max(salary)- min(salary)) as Difference from employees ;
select  manager_id,  min(salary)  from employees where manager_id is not null group by manager_id having min(salary)>6000 order by min(salary) desc; 
select count(*) as Total, sum( decode (to_char(hire_date,'YYYY'),'1995', 1,0)) as "1995",sum( decode (to_char(hire_date,'YYYY'),'1996', 1,0))  as "1996",sum( decode (to_char(hire_date,'YYYY'),'1997', 1,0)) as "1997", sum( decode (to_char(hire_date,'YYYY'),'1998', 1,0)) as "1998" from employees;
select job_id as "Job", sum(decode(department_id, 20, salary)) as "Dep 20",sum(decode(department_id, 50, salary)) as "Dep 50",sum(decode(department_id, 80, salary)) as "Dep 80", sum(decode(department_id, 90, salary))  as "Dep 90" , sum(salary) as "Total" from employees group by job_id;


















