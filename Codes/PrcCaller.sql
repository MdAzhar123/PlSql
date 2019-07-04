--Calling the procedure PrcRetreiveEmpCountByYear
--from this procedure
create or replace procedure PrcCaller
(
  v_joining_month employees.first_name%type
)
is
  --Local declaration
  v_emp_count integer;
begin
   PrcRetreiveEmpCountByYear(v_joining_month,v_emp_count);
   dbms_output.put_line('No of employees joining in the month '||v_joining_month||' is '||v_emp_count);
end PrcCaller;