---Before Row Trigger
create or replace trigger TrgBeforeDeleteRowBill
before delete on electricity_bill
for each row
begin
  dbms_output.put_line('The bill of the consumer with consumer no '||:old.consumer_no||' getting deleted');
  insert into old_bills values(:old.consumer_no,:old.prev_read,:old.curr_read,:old.units,:old.tot_charge);
end;
