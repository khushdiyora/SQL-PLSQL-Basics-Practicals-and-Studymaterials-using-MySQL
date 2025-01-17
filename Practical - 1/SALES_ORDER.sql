CREATE TABLE SALES_ORDER (
    ORDER_NO VARCHAR2(6) PRIMARY KEY CHECK (ORDER_NO LIKE 'O%'),
    CLIENT_NO VARCHAR2(6) REFERENCES CLNT_MASTER(CLIENT_NO),
    ORDER_DATE DATE NOT NULL,
    DELY_ADDR VARCHAR2(25),
    SALESMAN_NO VARCHAR2(6) REFERENCES SALES_MASTER(SALESMAN_NO),
    DELY_TYPE CHAR(1) DEFAULT 'F' CHECK (DELY_TYPE IN ('P', 'F')),
    BILLYN CHAR(1),
    DELY_DATE DATE,
    ORDER_STATUS VARCHAR2(10) CHECK (ORDER_STATUS IN ('IN PROCESS', 'FULFILLED', 'BACK_ORDER', 'CANCELLED'))
);
