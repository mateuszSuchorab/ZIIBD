create table MY_EMPLOYEE (ID number(4) not null, last_name varchar2(25), first_name varchar2(25), userid varchar2(8), salary number(9,2));
describe my_employee;
insert into my_employee values (1,'Patel','Ralph','rpatel',895);
insert into my_employee values (2,'Dancs','Betty','bdancs',860);
select * from my_employee;
insert into my_employee values(&my_id, '&&my_last_name', '&&my_first_name', '&&my_user_id', &my_salary); 
UNDEFINE my_first_name;
UNDEFINE my_last_name;
UNDEFINE my_user_id;
select * from my_employee;
comit;
update my_employee set last_name = 'Dexter' where id =3;
update my_employee set salary = 1000 where salary  <900;
select * from my_employee;
delete from my_employee where last_name = 'Dancs' and FIRST_NAME = 'Betty';
select * from my_employee;
comit;
insert into my_employee values(&my_id, '&&my_last_name', '&&my_first_name', '&&my_user_id', &my_salary); 
UNDEFINE my_first_name;
UNDEFINE my_last_name;
select * from my_employee;
savepoint exercise18;
delete from my_employee;
select * from my_employee;
rollback to savepoint exercise18;
select * from my_employee;
comit;
insert into my_employee VALUES (6, 'Anthony', 'Mark', lower(substr('Anthony', 1, 1) ||  substr('Mark', 1, 7)), 1230); 
select * from my_employee;







