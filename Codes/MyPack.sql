create or replace package MyPack
is
  type emp_details_type is ref_cursor;
  procedure prc_emp_details(v_country_name 
  countries.country_name%type,emp_details out emp_details_type
  );
  procedure prc_get_emp_details(v_country_name countries.country_name%type);
end MyPack;
