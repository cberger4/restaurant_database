DROP TABLE CUSTOMER CASCADE CONSTRAINTS;
CREATE TABLE CUSTOMER(
    CustomerID      Int             NOT NULL,
    TableNo         Int             NOT NULL,
    Position        VarChar(20)     NOT NULL,
    PRIMARY KEY(CustomerID)
    );
    
drop table party cascade constraints;
CREATE TABLE party(
    grpno    INT NOT NULL,
    tablenum INT not null,
    SID INT NOT Null,
    PRIMARY KEY(grpno),
    FOREIgN KEY(tablenum) references CUSTOMER(CustomerID)
    --FOREIGN KEY(SID) references SERVER(serverID)
    );

DROP TABLE SERVER CASCADE CONSTRAINTS;
CREATE TABLE SERVER(
    serverID int not null,
    firstname varchar(13),
    lastname varchar(13),
    primary key(ServerID)
    );
    
ALTER TABLE PARTY ADD (
  FOREIGN KEY(SID) references SERVER(serverID)
);

drop table receipt cascade constraints;
CREATE TABLE receipt(
    chit_id int not null,
    CID int not null,
    menu_item int not null,
    primary key(chit_id),
    foreign key(CID) references CUSTOMER(customerID)
    ---foreign key (menu_item) references MENU(menu_ID)
    );
DROP SEQUENCE seqCID;
CREATE SEQUENCE seqCID INCREMENT BY 1 START WITH 1;
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
    


