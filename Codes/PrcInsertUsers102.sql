--The procedure accepts user details from the calling
--environment as parameters and inserts the information
--into the table users102 as record
create or replace procedure PrcInsertUsers102
(
  v_fullname users102.fullname%type,
  v_password users102.password%type,
  v_mobilenumber users102.mobilenumber%type,
  v_email users102.email%type,
  v_dob date:=sysdate
)

is
   v_userid users102.userid%type;
begin
  select m_seq.nextval into v_userid
  from dual;

  insert into users102
  values(v_fullname,v_userid,v_password,v_mobilenumber,v_email,v_dob);

  dbms_output.put_line('User registered successfully..');
end PrcInsertUsers102;




