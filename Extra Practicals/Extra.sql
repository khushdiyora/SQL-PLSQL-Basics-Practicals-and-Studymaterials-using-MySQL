/* EXTRA PRACTICAL-1 */

declare
n number:=&n;
begin
if mod(n,2)=0
then
dbms_output.put_line('The given number is even');
else
dbms_output.put_line('The given number is odd');
end if;
end;
/


/* EXTRA PRACTICAL-2 */

declare
   n number;
   i number;
   temp number;
begin
   n := &n;
   i := 2;
   temp := 1;

   for i in 2..n/2 loop
      if mod(n, i) = 0 then
         temp := 0;
         exit;
      end if;
   end loop;

   if temp = 1 then
      dbms_output.put_line('Given number is prime');
   else
      dbms_output.put_line('Given number is not prime');
   end if;
end;
/


/* EXTRA PRACTICAL-3 */

DECLARE
   v_account_number NUMBER;
BEGIN
   DBMS_OUTPUT.PUT('Enter Account Number: ');
   v_account_number := &v_account_number;

   DELETE FROM accounts
   WHERE account_number = v_account_number;

   IF SQL%ROWCOUNT > 0 THEN
      DBMS_OUTPUT.PUT_LINE('Account deleted successfully.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Account with the specified number not found.');
   END IF;
END;
/


/* EXTRA PRACTICAL-4 */

CREATE OR REPLACE PROCEDURE calculate_factorial(
   p_number IN NUMBER,
   p_result OUT NUMBER
)
IS
   v_factorial NUMBER := 1;
BEGIN
   IF p_number < 0 THEN
      DBMS_OUTPUT.PUT_LINE('Factorial is not defined for negative numbers.');
   ELSE
      FOR i IN 1..p_number LOOP
         v_factorial := v_factorial * i;
      END LOOP;

      p_result := v_factorial;
   END IF;
END calculate_factorial;
/

DECLARE
   v_user_input NUMBER := &v_user_input; 
   v_result NUMBER;
BEGIN
  calculate_factorial(v_user_input, v_result);
   DBMS_OUTPUT.PUT_LINE('Factorial: ' || v_result);
END;
/




