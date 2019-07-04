create or replace procedure PrcCaller
(
  v_country_name countries.country_name%type
)
is
  v_emp_count integer;
  begin
      PrcRetreiveNoOfEmployees2(v_country_name,v_emp_count);
     dbms_output.put_line('No of employees posted at '||v_country_name||'='||v_emp_count);
  end PrcCaller;
    
  