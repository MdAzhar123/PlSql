---After Statement Trigger
create or replace trigger TrgAfterDeleteBill
after delete on electricity_bill

begin
  dbms_output.put_line('The required details successfully deleted..');
end;
