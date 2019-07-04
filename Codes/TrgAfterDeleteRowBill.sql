---After Row Trigger
create or replace trigger TrgAfterDeleteRowBill
after delete on electricity_bill
for each row
begin
  dbms_output.put_line('The bill details of the consumer with consumer no '||:old.consumer_no||' successfully copied to the old bills table');
  
end;