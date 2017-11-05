select last_name || ' earns' || TO_CHAR(salary, '$99,999.00') || ' monthly but wants' || TO_CHAR(salary*3, '$99,999.00') ||'.' as "Dream Salaries." from EMPLOYEES;
select last_name , hire_date,   TO_CHAR((next_day(add_months(hire_date,6),'Monday')) , 'DAY ",the" fmDdspth "of" Month YYYY') as review from EMPLOYEES;
select last_name , hire_date,   TO_CHAR(hire_date, 'DAY') as "Day" from EMPLOYEES order by to_char(hire_date,'d');
select last_name,COMMISSION_PCT, NVL2(COMMISSION_PCT,TO_CHAR(Substr(COMMISSION_PCT, 2) ),'No Commision') AS "COMM" from EMPLOYEES ;
select job_id, DECODE (job_id, 'AD_PRES', 'A','ST_MAN', 'B','IT_PROG', 'C','SA_REP','D','ST_CLERK','E','0') from EMPLOYEES;
select job_id, CASE job_id when 'AD_PRES' then 'A' when 'ST_MAN' then 'B' when 'IT_PROG' then 'C' when 'SA_REP' then 'D' when 'ST_CLERK' then 'E' else '0' end from EMPLOYEES;

