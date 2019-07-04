--1.Create a procedure that prints the total number of employees 
  --posted at 'United Kingdom'.

  create or replace procedure PrcRetreiveNoOfEmployees
  is
    v_emp_count integer;
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
         where country_name='United Kingdom'
        )
      )
     );
    dbms_output.put_line('Total number of employees from Uinted Kingdom='||v_emp_count);
 end PrcRetreiveNoOfEmployees;
  