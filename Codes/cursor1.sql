declare
   --Declaring the cursor
   cursor c_dept is select * from departments
   order by department_id;

  --Declaring a record variable to store the recently fetched row
  v_dept_rec departments%rowtype;

begin
   open c_dept;
   loop
     fetch c_dept into v_dept_rec;
     exit when c_dept%notfound;

   dbms_output.put_line('Department ID'||v_dept_rec.department_id);
   dbms_output.put_line('Department Name'||v_dept_rec.department_name);
   dbms_output.put_line('Manager ID'||v_dept_rec.manager_id);
   dbms_output.put_line('Location ID'||v_dept_rec.location_id);
 end loop;
 close c_dept;
end;