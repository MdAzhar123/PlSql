create or replace package body MyPack
is
  --Implementing the procedure PrcRetreiveEmpCountByYear

procedure PrcRetreiveEmpCountByYear
(
  v_joining_month employees.first_name%type,
  v_emp_count out integer
)

is
begin
  select count(employee_id) into v_emp_count
  from employees
  where trim(to_char(hire_date,'Month'))=trim(v_joining_month);
end PrcRetreiveEmpCountByYear;

--Implementing the procedure PrcCaller
procedure PrcCaller

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

--Implementing the function FxCalculateTotCharge

function FxCalculateTotCharge
(
  v_units in electricity_bill.units%type
)
return electricity_bill.tot_charge%type
is
  v_tot_charge electricity_bill.tot_charge%type;
begin
   if v_units<=100
    then
      v_tot_charge:=v_units*5;
   elsif v_units<=200
    then
     v_tot_charge:=500+(v_units-100)*6;
   elsif v_units<=300
    then
      v_tot_charge:=500+600+(v_units-200)*7;
   else
      v_tot_charge:=500+600+700+(v_units-300)*8;
   end if;
  return v_tot_charge;
end FxCalculateTotCharge;
end MyPack;




   