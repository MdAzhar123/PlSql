--Illustration of out parameter through a procedure
--that receives a month in characters through in mode
--parameter and retreives the count of employees
--who have joined in that month.The value should be made 
--available to the calling environment.

create or replace procedure PrcRetreiveEmpCountByYear
(
  v_joining_month employees.first_name%type,
  v_emp_count out integer
)
begin
  select count(employee_id) into v_emp_count
  from employees
  where monthname(hire_date)=v_joining_month;
end PrcRetreiveEmpCountByYear;