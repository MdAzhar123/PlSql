/* An anonymous block that inputs employee id as user input,
   and retrieves salary of that employee.
   If the salary is less than 3000 the blobk should print 'Lo Salary'.
   If the salary is between 3001 and 5000 the block should print 'Moderate Salary'.
   Else the block should print 'Hi Salary'.
*/

declare
   v_salary employees.salary%type;
   v_employee_id employees.employee_id%type:=&employee_id;
begin
   select salary into v_salary from employees
   where employee_id=v_employee_id;

   if v_salary < 3000
    then
      dbms_output.put_line('Lo Salary');
   elsif v_salary between 3001 and 5000
    then
      dbms_output.put_line('Moderate Salary');
   else
      dbms_output.put_line('Hi Salary');

   end if;
end;




