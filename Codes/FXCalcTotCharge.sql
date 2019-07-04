/* Illustration of creating a function */
create or replace function FXCalcTotCharge
(
  v_units hr.electricity.units%type
)
return hr.electricity.tot_charge%type
is
  v_tot_charge hr.electricity.tot_charge%type;
begin
  if v_units <=100
   then v_tot_charge:=v_units*5;
  elsif v_units<=200
   then v_tot_charge:=500+(v_units-100)*6;
  elsif v_units<=300
   then v_tot_charge:=500+600+(v_units-200)*7;
  else
    v_tot_charge:=500+600+700+(v_units-300)*8;
  end if;
 return v_tot_charge;
end FXCalcTotCharge;

