--Illustration of a PL/SQL anonymous block
declare
  --Declaring the variable 'v_emp_count' havinf the same data type
  --and length as the column 'employee_id' of the table 'employees'.
  v_emp_count hr.employees.employee_id%type;
begin
   select count(employee_id) into v_emp_count
   from hr.employees where
   department_id in
   (
     select department_id from hr.departments
     where location_id in
     (
       select location_id from hr.locations
       where country_id=
        (
          select country_id from hr.countries
          where country_name='United Kingdom'
       )
      )
    );
dbms_output.put_line('No of employees from United Kingdom='||v_emp_count);
end;
