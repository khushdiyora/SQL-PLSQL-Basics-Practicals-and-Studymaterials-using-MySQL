SET SERVER OUTPUT ON;


create or replace package mypackage as function ch_no(clno CLIENT_MASTER.Client_no%Type)
return number;
end;
/
create or replace package body mypackage as function ch_no(clno CLIENT_MASTER.Client_no%Type)
return number is no CLIENT_MASTER.Client_no%Type;
begin
select Client_no into no from CLIENT_MASTER where Client_no=clno;
dbms_output.put_line('CLientno is valid');
return 1;
exception
when no_data_found then
dbms_output.put_line('Clientno not found');
return 0;
end;
end;
/   
