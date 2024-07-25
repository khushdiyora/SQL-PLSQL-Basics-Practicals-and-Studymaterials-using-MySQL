/* PRACTICAL-21(A) */

CREATE OR REPLACE TRIGGER check_negative_balance
BEFORE INSERT ON Account
FOR EACH ROW
DECLARE
    v_balance NUMBER;
BEGIN
    v_balance := :NEW.balance;
    IF v_balance < 0 THEN
        DBMS_OUTPUT.PUT_LINE('BAL IS NEGATIVE');
    END IF;
END;
/


/* PRACTICAL-21(B) */

CREATE OR REPLACE TRIGGER check_negative_balance
    BEFORE INSERT ON Account
    FOR EACH ROW
  DECLARE
      v_balance NUMBER;
    BEGIN
    v_balance := :NEW.balance;
        IF v_balance < 0 THEN
           RAISE_APPLICATION_ERROR(-20001, 'Cannot insert record. Balance cannot be negative.');
      END IF;
  END;
  /

