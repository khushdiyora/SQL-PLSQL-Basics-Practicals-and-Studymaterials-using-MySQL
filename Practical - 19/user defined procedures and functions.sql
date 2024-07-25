SET SERVER OUTPUT ON;

create or replace procedure fact2(no in number) is
invalid_num exception;
num number(10);
temp number(10);
begin
num:=no;
if num<0 then
raise invalid_num;
end if;
temp :=num-1;
loop
num:=num*temp;
temp:=temp-1;
exit when(temp<1);
end loop;
dbms_output.put_line(num);
exception
when invalid_num then dbms_output.put_line('only positive no.enter');
end;
/