show databases;
use student;
show tables;
select *from employee;
delimiter $$
create function bonustatus(
salary char(20)
)
returns varchar(20)
deterministic 
begin
if salary >50000 then
return ('eligibile for bonus');
else
return ('not eligibile');
end if;
end $$
delimiter $$

select e_id,emp_name,address,salary,bonustatus(salary) from employee;