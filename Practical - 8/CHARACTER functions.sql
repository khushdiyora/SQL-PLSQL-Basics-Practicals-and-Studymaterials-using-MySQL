/* Q-1:- */

SELECT NAME FROM CLIENT_MASTER WHERE NAME LIKE '_A%';

/* Q-2:- */

SELECT NAME,CITY FROM CLIENT_MASTER WHERE CITY LIKE 'M%';

/* Q-3:- */

SELECT NAME FROM CLIENT_MASTER WHERE CITY IN('BANGALORE','MANGALORE');

/* Q-4:- */

SELECT NAME,CITY,STATE FROM CLIENT_MASTER WHERE STATE NOT IN('MAHARASHTRA');

/* Q-5:- */

SELECT NAME ||'-'|| CLIENT_NO "CLIENT-DETAILS" FROM CLIENT_MASTER;

/* Q-6:- */

SELECT E_NAME,SUBSTR(E_NAME,1,3) AS "FIRST - 3 LETTERS OF NAME" FROM EMP;

/* Q-7:- */

SELECT NAME,LENGTH(NAME) AS "NAME_LENGTH" FROM CLIENT_MASTER;

/* Q-8:- */

SELECT SUBSTR('DIYORA KHUSH-DIYORA',8,25) AS"SUB-STRING" FROM DUAL;

/* Q-9:- */

SELECT SAL,LPAD(SAL,3) AS "PADDED_SALARY" FROM EMP;

/* Q-10:- */

SELECT SAL,RPAD(SAL,3) AS "PADDED_SALARY" FROM EMP;

/* Q-11:- */

SELECT E_NAME,REPLACE(E_NAME, 'a','e') AS "UPDATED_E_NAME" FROM EMP;

/* Q-12:- */

SELECT DESCRIPTION,LTRIM(DESCRIPTION,'D') AS "TRIMMED-DESCRIPTION" FROM PRODUCT_MASTER;
