declare
   v_prev_read electricity_bill.prev_read%type;
   v_curr_read electricity_bill.curr_read%type;
  v_units electricity_bill.units%type;
   v_tot_charge electricity_bill.tot_charge%type;

begin
   select prev_read,curr_read into v_prev_read,v_curr_read
   from electricity_bill
   where consumer_no=1004;

   v_units:=v_curr_read-v_prev_read;
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

  dbms_output.put_line('Consumer No :'||1004);
  dbms_output.put_line('Units Consumed :'||v_units);
  dbms_output.put_line('Total Charge :'||v_tot_charge);
 end;
  










    