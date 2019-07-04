--Illustration of the user of out parameter in a procedure
create or replace procedure PrcEmpCountFromIT
(
  v_department_name hr.departments.department_name%type,
  v_emp_count out integer
)
  is
   begin
     select count(employee_id) into v_emp_count
     from hr.employees
     where department_id=
     (
       select department_id from hr.departments
       where department_name=v_department_name
     );
  end;