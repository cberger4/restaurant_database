-- James Morgan,Ed Lacinski
-- MENU
INSERT INTO MENU VALUES (1, 'soft_drink', 2);
INSERT INTO MENU VALUES (2, '12" Pizza', 10);
INSERT INTO MENU VALUES (3, 'Spaghetti with Meatballs', 15);
INSERT INTO MENU VALUES (4, 'Chicken Parmesan', 15);
INSERT INTO MENU VALUES (5, 'Pesto Gnocchi', 16);
INSERT INTO MENU VALUES (6, 'Salmon with Seasonal Veggies', 20);
INSERT INTO MENU VALUES (7, 'Lobster Mac N Cheese', 21);
INSERT INTO MENU VALUES (8, 'Filet Mignon', 25);
INSERT INTO MENU VALUES (9, 'Penne Primavera', 19);
INSERT INTO MENU VALUES (10, 'Lemon Butter Scallops', 23);

-- SERVERS
INSERT INTO SERVER VALUES (1, 'Jason', 'Scott');

INSERT INTO SERVER VALUES (2, 'Kimberly', 'HART');

INSERT INTO SERVER VALUES (3, 'Zack', 'Taylor');

-- PARTY
INSERT INTO PARTY Values(1,1);
INSERT INTO PARTY VALUES(2,1);
INSERT INTO PARTY Values(3,1);
INSERT INTO PARTY VALUES(4,2);
INSERT INTO PARTY Values(5,2);
INSERT INTO PARTY VALUES(6,2);
INSERT INTO PARTY Values(7,3);
INSERT INTO PARTY VALUES(8,3);


--Table 1
INSERT INTO CUSTOMER VALUES(1,1,2);
INSERT INTO CUSTOMER VALUES(2,1,1);

--Table 2
INSERT INTO CUSTOMER VALUES(3,2,2);
INSERT INTO CUSTOMER VALUES(4,2,1);
INSERT INTO CUSTOMER VALUES(5,2,3);
INSERT INTO CUSTOMER VALUES(6,2,4);

--Table 3
INSERT INTO CUSTOMER VALUES(7,3,2);
INSERT INTO CUSTOMER VALUES(8,3,1);
INSERT INTO CUSTOMER VALUES(9,3,4);

--Table 4
INSERT INTO CUSTOMER VALUES(10,4,2);
INSERT INTO CUSTOMER VALUES(11,4,3);
INSERT INTO CUSTOMER VALUES(12,4,4);

--Table 5
INSERT INTO CUSTOMER VALUES(13,5,2);
INSERT INTO CUSTOMER VALUES(14,5,3);
INSERT INTO CUSTOMER VALUES(15,5,4);

--Table 6
INSERT INTO CUSTOMER VALUES(16,6,2);
INSERT INTO CUSTOMER VALUES(17,6,3);
INSERT INTO CUSTOMER VALUES(18,6,1);
INSERT INTO CUSTOMER VALUES(19,6,4);

--Table 7
INSERT INTO CUSTOMER VALUES(20,7,2);
INSERT INTO CUSTOMER VALUES(21,7,3);
INSERT INTO CUSTOMER VALUES(22,7,1);
INSERT INTO CUSTOMER VALUES(23,7,4);
INSERT INTO CUSTOMER VALUES(24,7,6);
INSERT INTO CUSTOMER VALUES(25,7,5);
INSERT INTO CUSTOMER VALUES(26,7,8);
INSERT INTO CUSTOMER VALUES(27,7,7);

--Table 8
INSERT INTO CUSTOMER VALUES(28,8,2);
INSERT INTO CUSTOMER VALUES(29,8,3);
INSERT INTO CUSTOMER VALUES(30,8,1);
INSERT INTO CUSTOMER VALUES(31,8,4);



--FOOD (Order#,Customer#,MenuItem#)

--Customer #1's receipt
INSERT INTO receipt VALUES(1,1,1);
INSERT INTO receipt VALUES(2,1,10);

--Customer #2's receipt
INSERT INTO receipt VALUES(3,2,1);
INSERT INTO receipt VALUES(4,2,9);


--Customer #3's receipt
INSERT INTO receipt VALUES(5,3,1);
INSERT INTO receipt VALUES(6,3,8);

--Customer #4's receipt
INSERT INTO receipt VALUES(7,4,2);

--Customer #5's receipt
INSERT INTO receipt VALUES(8,5,3);

--Customer #6's receipt
INSERT INTO receipt VALUES(9,6,2);

--Customer #7's receipt
INSERT INTO receipt VALUES(10,7,3);

--Customer #8's receipt
INSERT INTO receipt VALUES(11,8,1);
INSERT INTO receipt VALUES(12,8,3);

--Customer #9's receipt
INSERT INTO receipt VALUES(13,9,1);
INSERT INTO receipt VALUES(14,9,3);

--Customer #10's receipt
INSERT INTO receipt VALUES(15,10,1);
INSERT INTO receipt VALUES(16,10,3);

--Customer #11's receipt
INSERT INTO receipt VALUES(17,11,1);
INSERT INTO receipt VALUES(18,11,6);

--Customer #12's receipt
INSERT INTO receipt VALUES(19,12,1);
INSERT INTO receipt VALUES(20,12,7);

--Customer #13's receipt
INSERT INTO receipt VALUES(21,13,1);
INSERT INTO receipt VALUES(22,13,5);

--Customer #14's receipt
INSERT INTO receipt VALUES(23,14,1);

--Customer #15's receipt
INSERT INTO receipt VALUES(24,15,1);
INSERT INTO receipt VALUES(25,15,9);

--Customer #16's receipt
INSERT INTO receipt VALUES(26,16,4);

--Customer #17's receipt
INSERT INTO receipt VALUES(27,17,2);

--Customer #18's receipt
INSERT INTO receipt VALUES(28,18,10);

--Customer #19's receipt
INSERT INTO receipt VALUES(29,19,2);

--Customer #20's receipt
INSERT INTO receipt VALUES(30,20,4);
INSERT INTO receipt VALUES(31,20,4);

--Customer #21's receipt
INSERT INTO receipt VALUES(32,21,8);

--Customer #22's receipt
INSERT INTO receipt VALUES(33,22,9);

--Customer #23's receipt
INSERT INTO receipt VALUES(34,23,1);

--Customer #24's receipt
INSERT INTO receipt VALUES(35,24,1);

--Customer #25's receipt
INSERT INTO receipt VALUES(36,25,1);

--Customer #26's receipt
INSERT INTO receipt VALUES(37,26,1);
INSERT INTO receipt VALUES(38,26,9);

--Customer #27's receipt
INSERT INTO receipt VALUES(39,27,9);
INSERT INTO receipt VALUES(40,27,1);
INSERT INTO receipt VALUES(41,27,1);

--Customer #28's receipt
INSERT INTO receipt VALUES(42,28,2);
INSERT INTO receipt VALUES(43,28,1);

--Customer #29's receipt
INSERT INTO receipt VALUES(44,29,7);

--Customer #30's receipt
INSERT INTO receipt VALUES(45,30,8);
INSERT INTO receipt VALUES(47,30,1);




