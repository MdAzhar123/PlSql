create or replace procedure PrcHighestSal
(
   v_department_name in hr.departments.department_name%type
)

is
  v_full_name hr.employees.first_name%type;
begin
  select first_name||' '||last_name into v_full_name from hr.employees
  where salary=
  (
     select max(salary) from hr.employees
     where department_id=
      (
        select department_id from hr.departments
        where department_name=v_department_name
     )
  );
dbms_output.put_line('Full name of the employee drawing the highest salary is '||v_full_name);
end PrcHighestSal;