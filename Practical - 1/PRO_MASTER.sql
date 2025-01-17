CREATE TABLE PRO_MASTER (
    PRODUCT_NO VARCHAR2(6) PRIMARY KEY CHECK (PRODUCT_NO LIKE 'P%'),
    DESCRIPTION VARCHAR2(15) NOT NULL,
    PROFIT_PERCENT NUMBER(4, 2) NOT NULL,
    UNIT_MEASURE VARCHAR2(10) NOT NULL,
    QTY_ON_HAND NUMBER(8) NOT NULL,
    REORDER NUMBER(8) NOT NULL,
    SELL_PRICE NUMBER(8, 2) NOT NULL CHECK (SELL_PRICE != 0),
    COST_PRICE NUMBER(8, 2) NOT NULL CHECK (COST_PRICE != 0)
);
