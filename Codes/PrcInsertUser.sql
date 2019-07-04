create or replace procedure PrcInsertUser
(
  v_fullname users101.full_name%type,
  v_username users101.username%type,
  v_password users101.password%type,
  v_gender users101.gender%type,
  v_age users101.age%type,
  v_email users101.email%type
)
is
  invalid_email exception;
begin
   if v_email not like '%@cognizant.com'
    then
     raise invalid_email;
   end if;
  insert into users101 values(v_fullname,v_username,v_password ,v_gender,v_age,v_email);
  dbms_output.put_line('User registered successfully...');
exception
  when invalid_email
   then
    dbms_output.put_line('Email should be official cognizant mail...');
end PrcInsertUser;
   
exec PrcInsertUser('Thomas Ulman','scott','tiger','Male',23,'thomas@cognizant.com');