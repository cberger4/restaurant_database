DROP TABLE CUSTOMER CASCADE CONSTRAINTS;
DROP TABLE SERVER CASCADE CONSTRAINTS;
DROP TABLE MEAL CASCADE CONSTRAINTS;
DROP TABLE KITCHEN CASCADE CONSTRAINTS;
DROP SEQUENCE seqCID;
DROP SEQUENCE seqSID;
DROP SEQUENCE seqMID;
DROP SEQUENCE seqKID;

CREATE TABLE CUSTOMER(
    CustomerID      Int           NOT NULL,
    TableNo         Int           NOT NULL,
    SID             INT           NOT NULL,
    Position        VarChar(20)   NOT NULL,
    COVID_Status    VarChar(20)   NULL,
    CONSTRAINT      CustomerID_PK   PRIMARY KEY(CustomerID)
    );
    
CREATE SEQUENCE seqCID INCREMENT BY 1 START WITH 1;
    
CREATE TABLE SERVER(
    ServerID        Int         NOT NULL,
    CustomerID      Int         NOT NULL,
    Tip_Value       Int         NULL,
    Subtotal        Int         NULL,
    PRIMARY KEY(ServerID),
    CONSTRAINT      SERV_CUSTOMER_FK     FOREIGN KEY(CustomerID)
                                REFERENCES CUSTOMER(CustomerID)
    );
ALTER TABLE CUSTOMER ADD (
  foreign key (SID) references SERVER(ServerID)
);

DROP TABLE ASSIGN CASCADE CONSTRAINTS;
CREATE TABLE assign (
  CID   int not null,
  SID    int not null,
  primary key (CID,SID),
  foreign key (CID) references Customer(CustomerID),
  foreign key (SID) references SERVER(ServerID)
);
CREATE SEQUENCE seqSID INCREMENT BY 1 START WITH 1;

CREATE TABLE MEAL(
    Menu_Name       VarChar(20)   NOT NULL,
    CustomerID      Int           NOT NULL,
    Price           Int           NOT NULL,
    Allergen        VarChar(100)  NULL,
    CONSTRAINT      MenuID_PK       PRIMARY KEY(Menu_Name),
    CONSTRAINT      MEAL_CUSTOMER_FK     FOREIGN KEY(CustomerID)
                                REFERENCES CUSTOMER(CustomerID)
    );
    
CREATE SEQUENCE seqMID INCREMENT BY 1 START WITH 1;

CREATE TABLE KITCHEN(
    Chef_Name       VarChar(50)     NOT NULL,
    CustomerID      Int             NOT NULL,
    Cook_Start      VarChar(8)         NOT NULL, --Will change to Time()
    Cook_End        VarChar(8)       NOT NULL,   --once we figure out how
    --Duration as a derived attribute will be added
    CONSTRAINT      Chef_PK         PRIMARY KEY(Chef_Name),
    CONSTRAINT      KITCH_CUSTOMER_FK   FOREIGN KEY(CustomerID)
                                REFERENCES  CUSTOMER(CustomerID)
    );
    
CREATE SEQUENCE seqKID INCREMENT BY 1 START WITH 1;