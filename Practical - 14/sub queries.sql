/* Q-1:- */
SELECT E_NAME FROM EMP WHERE DEPT_NO IN(SELECT DEPT_NO FROM DEPT WHERE LOC='NEW YORK');
/* Q-2:- */
SELECT LOC FROM DEPT WHERE DEPT_NO IN(SELECT DEPT_NO FROM EMP WHERE JOB='President');
/* Q-3:- */
SELECT E_NAME FROM EMP WHERE JOB='Manager' AND DEPT_NO IN(SELECT DEPT_NO FROM DEPT WHERE D_NAME='RESEARCH');
/* Q-4:- */
SELECT D_NAME FROM DEPT WHERE DEPT_NO IN (SELECT DEPT_NO FROM EMP WHERE EMP_NO='7900');
/* Q-5:- */
SELECT D_NAME FROM DEPT WHERE DEPT_NO IN(SELECT MAX (DEPT_NO) FROM EMP);
/* Q-6:- */
 SELECT * FROM CLIENT_MASTER WHERE CLIENT_NO IN(SELECT CLIENT_NO FROM SALES_ORDER WHERE ORDER_STATUS='CANCELLED');
/* Q-7:- */
SELECT SALESMAN_NAME,SALESMAN_NO FROM SALES_MASTER WHERE SALESMAN_NO IN(SELECT SALESMAN_NO FROM SALES_ORDER WHERE ORDER_DATE='03-APR-04');
/* Q-8:- */
SELECT * FROM SALESMAN_MASTER WHERE SALESMAN_NO IN(SELECT SALESMAN_NO FROM SALES_ORDER WHERE CLIENT_NO IN(SELECT CLIENT_NO FROM CLIENT_MASTER WHERE CITY='MADRAS'));
/* Q-9:- */
SELECT DESCRIPTION FROM PRO_MASTER WHERE PRODUCT_NO IN (SELECT PRODUCT_NO FROM SALES_ORDER_DETAILS WHERE PRODUCT_RATE = (SELECT MAX(PRODUCT_RATE) FROM SALES_ORDER_DETAILS));


/* Q-10:- */
SELECT CLIENT_NO FROM SALES_ORDER WHERE ORDER_NO IN (SELECT ORDER_NO FROM SALES_ORDER_DETAILS WHERE QTY_ORDERED IN(SELECT MAX(QTY_ORDERED)FROM SALES_ORDER_DETAILS));
