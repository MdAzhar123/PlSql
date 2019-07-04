--Ilustration of in mode parameter
create or replace procedure PrcIn
(
  x in integer
)
is
  begin 
    dbms_output.put_line('x='||x);
    x:=10;
  end PrcIn;