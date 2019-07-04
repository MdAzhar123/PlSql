insert into electricity_bill
values(1001,70,90,null,null);
insert into electricity_bill
values(1002,80,120,null,null);
insert into electricity_bill
values(1003,80,230,null,null);
insert into electricity_bill
values(1004,110,350,null,null);
insert into electricity_bill
values(1005,120,450,null,null);
insert into electricity_bill
values(1006,190,560,null,null);

create or replace function FxCalculateTotCharge
(
  v_units in electricity_bill.units%type
)
return electricity_bill.tot_charge%type
is
  v_tot_charge electricity_bill.tot_charge%type;
begin
   if v_units<=100
    then
      v_tot_charge:=v_units*5;
   elsif v_units<=200
    then
     v_tot_charge:=500+(v_units-100)*6;
   elsif v_units<=300
    then
      v_tot_charge:=500+600+(v_units-200)*7;
   else
      v_tot_charge:=500+600+700+(v_units-300)*8;
   end if;
  return v_tot_charge;
end FxCalculateTotCharge;

















  