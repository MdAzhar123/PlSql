declare
 v_department_rec departments%rowtype;
begin
  select * into v_department_rec
  from departments
  where department_id=999;

  dbms_output.put_line('Department ID :'||v_department_rec.department_id);
  dbms_output.put_line('Department Name :'||v_department_rec.department_name);
 exception
   when no_data_found then
   dbms_output.put_line('Invalid department id...');
end;
  