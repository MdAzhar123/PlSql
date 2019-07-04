create or replace trigger TrgDelete
before delete on electricity_bill
begin
  dbms_output.put_line('Trigger fired');
end;

delete from electricity_bill
where 1=2

create table old_bills
as
  select * from electricity_bill
  where 1=2