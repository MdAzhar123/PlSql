begin
  for employee_rec in
   (
     select * from employees
     where department_id in
      (
        select department_id from departments
        where location_id in
         (
           select location_id from locations
           where country_id =
            (
              select country_id from countries
              where country_name='United Kingdom'
            )
          )
         )
        )
    loop
      dbms_output.put_line('Employee ID :'||employee_rec.employee_id);
      dbms_output.put_line('Name :'||employee_rec.first_name);
      dbms_output.put_line('Department ID :'||employee_rec.department_id);
   end loop;
  end;
      
