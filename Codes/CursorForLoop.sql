create or replace procedure PrcRetreiveEmployees
(
  v_country_name countries.country_name%type
)

is
 --Declaring the cursor
  cursor c_dept_details is select employee_id,concat(first_name,concat(' ',last_name)) as full_name,
   department_name,city,country_name
   from employees join departments
   using(department_id) join locations
   using(location_id) join countries
   using(country_id)
   where country_name=v_country_name;
  begin
   --Cursor for loop
     for c_dept_rec in c_dept_details
      loop
       dbms_output.put_line('Employee ID '||c_dept_rec.employee_id);
     dbms_output.put_line('Full Name '||c_dept_rec.full_name);
      dbms_output.put_line('Department Name : '||c_dept_rec.department_name);
      dbms_output.put_line('City '||c_dept_rec.city);
      dbms_output.put_line('Country '||c_dept_rec.country_name);
  end loop;
 end;

    