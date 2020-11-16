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
    PRIMARY KEY(grpno)
    );

DROP TABLE SERVER CASCADE CONSTRAINTS;
CREATE TABLE SERVER(
    serverID int not null,
    tabnum int not null,
    firstname varchar(13),
    lastname varchar(13),
    primary key(ServerID),
    foreign key(tabnum) references PARTY(grpno)
    );
    
ALTER TABLE PARTY ADD (
  foreign key (tablenum) references SERVER(ServerID)
);

drop table receipt cascade constraints;
CREATE TABLE receipt(
    chit int not null,
    CID int not null,
    menu_ID int not null,
    primary key(chit),
    foreign key(CID) references CUSTOMER(customerID)
    );
    
drop table menu cascade constraints;
CREATE TABLE MENU(
    menu_ID int null,
    drink_ID int null,
    side_ID int null,
    menu_name int not null,
    price int not null,
    quantity int not null,
    primary key(menu_ID)
    );

