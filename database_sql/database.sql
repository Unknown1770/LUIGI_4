CREATE TABLE Customer
(
  EMAIL VARCHAR(40),
  NAME VARCHAR(30),
  PHONE BIGINT,
  STATE VARCHAR(20),
  CITY VARCHAR(20),
  PINCODE INT,
  HOUSE_NO INT,
  PRIMARY KEY(EMAIL)
);

CREATE TABLE LOGIN
(
  CUSTOMER_EMAIL VARCHAR(40),
  PASSWORD VARCHAR(20),
  CONSTRAINT FK_1 FOREIGN KEY(CUSTOMER_EMAIL) REFERENCES Customer(EMAIL)
);

CREATE TABLE PRODUCT
(
  NAME VARCHAR(200),
  PRODUCT_ID INT,
  PRICE BIGINT,
  STOCK INT,
  CATAGORY VARCHAR(10),
  PRIMARY KEY(PRODUCT_ID)
);

CREATE TABLE PAYMENT
(
  PAYMENT_NO INT,
  C_EMAIL VARCHAR(40),
  CARD_NO BIGINT,
  BANK VARCHAR(20),
  PAYMENT_DATE DATE,
  AMOUNT BIGINT,
  CONSTRAINT FK_2 FOREIGN KEY (C_EMAIL) REFERENCES Customer(EMAIL)
);

CREATE TABLE EMPLOYEE
(
  NAME VARCHAR(30),
  E_ID INT,
  PHONE BIGINT,
  SALARY INT, 
  DELIVERY_AREA VARCHAR(50),
  PRIMARY KEY(E_ID)
);

CREATE TABLE CART
(
  CUS_EMAIL VARCHAR(40),
  P_ID INT,
  CART_ID CHAR(50),
  QUANTITY INT,
  PRIMARY KEY (CART_ID),
  CONSTRAINT FK_3 FOREIGN KEY (CUS_EMAIL) REFERENCES Customer(EMAIL),
  CONSTRAINT FK_4 FOREIGN KEY (P_ID) REFERENCES PRODUCT(PRODUCT_ID)
);

CREATE TABLE buynow
(
  PURCHASE_ID INT AUTO_INCREMENT PRIMARY KEY,
  CUSTOMER VARCHAR(40),
  PROD_ID INT,
  PAYMENT_ID INT,
  DELIVERY_EMPLOYEE INT,
  CONFIRMED INT,
  DATE DATE,
  CONSTRAINT FK_5 FOREIGN KEY (DELIVERY_EMPLOYEE) REFERENCES EMPLOYEE(E_ID),
  CONSTRAINT FK_8 FOREIGN KEY (PROD_ID) REFERENCES PRODUCT(PRODUCT_ID)
);



