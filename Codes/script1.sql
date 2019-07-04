/* An anonymous block to print the details of the department having at least 3 employees.Illustration of %rowtype */
declare
  --v_department_id departments.department_id%type;
  --v_department_name departments.department_name%type;
  --v_manager_id departments.manager_id%type;
  --v_location_id departments.location_id%type;
  --Declaring v_emp_rec as a record variable
  --that can accomodate one single row of the departments
  --table
    v_emp_rec departments%rowtype;
begin
  select *
    into v_emp_rec
 from departments
where department_id in
(
  select department_id from employees
  group by department_id
  having count(department_id)>=40
);
dbms_output.put_line('Department ID :'||v_emp_rec.department_id);
dbms_output.put_line('Department Name :'||v_emp_rec.department_name);
dbms_output.put_line('Manager ID :'||v_emp_rec.manager_id);
dbms_output.put_line('Location ID :'||v_emp_rec.location_id);
end;
