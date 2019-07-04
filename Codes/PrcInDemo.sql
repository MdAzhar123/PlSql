create or replace procedure PrcInDemo
(
  x in integer
)
is
  begin
    dbms_output.put_line('x='||x);
    x:=10;
   dbms_output.put_line('x='||x);
  end PrcInDemo;