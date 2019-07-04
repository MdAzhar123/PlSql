--2.Create a procedure that prints the total number of employees 
  --posted at the country name received by the procedure.

  create or replace procedure PrcRetreiveNoOfEmployees2
   (
     v_country_name countries.country_name%type,
     v_emp_count out integer
   )
  is
    --v_emp_count integer;
  begin
    select count(employee_id) into v_emp_count
    from employees
    where department_id in
    (
      select department_id from departments
      where location_id in
      (
       select location_id from locations
       where country_id
       =
        (
         select country_id from countries
         where country_name=v_country_name
        )
      )
     );
    --dbms_output.put_line('Total number of employees from '||v_country_name||'='||v_emp_count);
 end PrcRetreiveNoOfEmployees2;
  