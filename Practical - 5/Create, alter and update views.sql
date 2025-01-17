/* Q-1:- */

CREATE VIEW SALES_VIEW AS SELECT ORDER_NO,ORDER_DATE,ORDER_STATUS FROM SALES_ORDER;

/* Q-2:- */

CREATE VIEW ORDER_VIEW AS SELECT PRODUCT_NO,PRODUCT_RATE,QTY_ORDERED FROM SALES_ORDER_DETAILS;

/* Q-3:- */

CREATE OR REPLACE VIEW SALES_VIEW  AS SELECT ORDER_NO,CLIENT_NO,ORDER_STATUS FROM SALES_ORDER;

/* Q-4:- */

UPDATE SALES_VIEW SET ORDER_STATUS='FULFILLED' WHERE ORDER_STATUS='IN PROCESS';
