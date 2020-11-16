-- James Morgan, Christian Berger, Ed Lacinski, Paige Bonvallet

--View tables
select * from server;
select * from customer;
select * from menu;
select * from party;
select * from receipt;


--Shows which tables each server has
SELECT
    server.firstname,
    party.tableno,
    server.serverid
FROM
    server,
    party
WHERE
    server.serverid = party.sid
GROUP BY
    server.firstname,
    party.tableno,
    server.serverid;
    
--Shows total number of customers
select count(*) as total_customers
from customer;

--Shows total number of servers
select count(*) as total_servers
from server;

--Shows total number of meals 
SELECT COUNT(chit_id) as Dishes_Sold
FROM receipt;

--Creates view to show receipts and prices with menu name and customerID
drop view chit_and_price;
create view chit_and_price(chit_id, menu_name, price, Customer_ID)
as select distinct chit_id, menu_name, price, CustomerID
from receipt , menu , customer 
where menu_id = menu_item and cid = customerID;

select * from chit_and_price
order by Customer_ID;

--Show subtotal of all tables
DROP VIEW subtotal;
CREATE VIEW Subtotal as
Select sum(distinct price) as total, c.tableno, count(*) chit_id
from menu m right outer join receipt r 
on r.menu_item = m.menu_id join customer c 
on c.customerID = r.cid 
group by c.tableno
order by c.tableno;

select * from subtotal;