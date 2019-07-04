declare
    i integer default 1;
begin
   loop
     dbms_output.put_line(5||' X '||i||' = '||(5*i));
     i:=i+1;
     exit when i=11;
   end loop;
end;


    syntax of while loop
     
    while condition
     loop
      statement1;
      statement2;
      :
      :
    end loop;

  syntax of for loop

   for counter_variable [reverse] in <start_value>..<last_value>
    loop
      statement1;
      statement2;
      :
    end loop;

  --Illustration of for loop
    begin
     
      for i in reverse 1..10
       loop
       dbms_output.put_line(i);
      end loop;
    end;
    














