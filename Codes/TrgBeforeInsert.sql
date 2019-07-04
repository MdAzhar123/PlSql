create or replace trigger TrgBeforeInsert
before insert on accounts_trans
for each row
declare
  v_bal accounts_master.balance%type;
begin
  select balance into v_bal
  from acoounts_master
  where ac_no=:new.ac_no;

if :new.tr_type='D'
 then
   v_bal:=v_bal+:new.tr_amt;
else
  if v_bal<:new.tr_amt
   then
     raise_application_error(-20009,'Insufficient funds...');
  else
   v_bal:=v_bal-:new.tr_amt;
  end if;
end if;
update accounts_master
set balance=v_bal
where ac_no=:new.ac_no;
dbms_output.put_line('Transaction successful..updated balance'||v_bal);
end;