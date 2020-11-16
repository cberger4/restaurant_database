-- James Morgan, Christian Berger, Ed Lacinski, Paige Bonvallet

DROP TABLE CUSTOMER CASCADE CONSTRAINTS;
CREATE TABLE CUSTOMER(
    CustomerID      Int             NOT NULL,
    TableNo         Int             NOT NULL,
    Posit        INT             NOT NULL,
    PRIMARY KEY(CustomerID)
    );
    
drop table party cascade constraints;
CREATE TABLE party(
    tableno    INT NOT NULL,
    SID INT NOT Null,
    PRIMARY KEY(tableno)
    );
    
ALTER TABLE CUSTOMER ADD(
FOREIGN KEY(tableno) references PARTY(tableno)
);

DROP TABLE SERVER CASCADE CONSTRAINTS;
CREATE TABLE SERVER(
    serverID int not null,
    firstname varchar(13),
    lastname varchar(13),
    primary key(ServerID)
    );

ALTER TABLE Party ADD(
FOREIGN KEY(SID) REFERENCES SERVER(SERVERID)
);

drop table receipt cascade constraints;
CREATE TABLE receipt(
    chit_id int not null,
    CID int not null,
    menu_item int not null,
    primary key(chit_id),
    foreign key(CID) references CUSTOMER(customerID)
    );
    

drop table menu cascade constraints;
CREATE TABLE MENU(
    menu_ID int not null,
    menu_name varChar(30) not null,
    price FLOAT(5) not null,
    primary key(menu_ID)
    );
    
ALTER TABLE receipt ADD (
  foreign key (menu_item) references MENU(menu_ID)
);
