SET SERVEROUTPUT ON;

/* Q-1:- */

declare
EN EMP.Emp_no %Type;
Salary EMP.Sal %Type;
Comm EMP.Comm %Type;
sum1 number(20);
begin
EN:=&EN;
if Salary+Comm<5000 then
update EMP set Sal=Sal+(Sal*0.1) where Emp_no=EN;
elsif Salary+Comm>=5000 then
update EMP set Sal=Sal+500 where Emp_no=EN;
elsif Salary+Comm>7000 then
update EMP set Sal=Sal+(Sal*0.12) where Emp_no=EN;
end if;
end;
/ 

/* Q-2:- */

DECLARE
SUM1 NUMBER(10):=0;
NUM NUMBER:=1;
BEGIN
LOOP
SUM1 := SUM1 + NUM;
NUM := NUM + 1;
EXIT WHEN (NUM > 10);
END LOOP;
DBMS_OUTPUT.PUT_LINE('SUM USING SIMPLE LOOP: ' || SUM1);
SUM1 := 0;
NUM := 1;
WHILE (NUM <= 10) 
LOOP
SUM1 := SUM1 + NUM;
NUM := NUM + 1;
END LOOP;
DBMS_OUTPUT.PUT_LINE('SUM USING WHILE LOOP: ' || SUM1);
SUM1 := 0;
NUM := 0;
FOR NUM IN 1..10 
LOOP
SUM1 := SUM1 + NUM;
END LOOP;
DBMS_OUTPUT.PUT_LINE('SUM USING FOR LOOP: ' || SUM1);
END;
/

/* Q-3:- */

DECLARE
grade CHAR(1) := 'B';
result VARCHAR2(100);
BEGIN
IF grade = 'A' 
THEN
result := 'Excellent';
ELSIF grade = 'B' 
THEN
result := 'Good';
ELSIF grade = 'C' 
THEN
result := 'Satisfactory';
ELSIF grade = 'D' 
THEN
result := 'Needs Improvement';
ELSE
result := 'Invalid Grade';
END IF;
DBMS_OUTPUT.PUT_LINE('Grade: ' || grade);
DBMS_OUTPUT.PUT_LINE('Result: ' || result);
END;
/
