--Illustration of for loop
begin
  for i in 1..10
  loop
   dbms_output.put_line(5||' X '||i||' = '||(5*i));
  end loop;
end;
  