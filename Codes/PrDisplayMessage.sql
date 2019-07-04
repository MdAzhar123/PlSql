--Illustration of creating  a stored procedure without parameters
create or replace procedure PrDisplayMessage
is
  begin
   dbms_output.put_line('I like to watch Hulla dance..");
  end PrDisplayMessage;
  