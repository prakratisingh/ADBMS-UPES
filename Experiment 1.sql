/*creating TABLE client_master*/
CREATE TABLE client_master(clientno varchar(6), name varchar(30), city varchar(15), pincode integer, state varchar(15), baldue decimal(10, 2)); 
/*inserting values IN client_master*/
INSERT INTO client_master(clientno, Name, city, Pincode, state, BalDue) values ('C00001', 'Ivan bayross', 'Mumbai', 400054, 'Maharashtra', 15000);
INSERT INTO client_master(clientno, Name, city, Pincode, state, BalDue) values ('C00002', 'Mamta muzumdar', 'Madras', 780001 , 'Tamil nadu', 0), ('C00003', 'Chhaya bankar', 'Mumbai', 400057 , 'Maharashtra', 5000);
INSERT INTO client_master(clientno, Name, city, Pincode, state, BalDue) values ('C00004', ' Ashwini joshi', ' Bangalore', 560001, ' Karnataka', 0), ('C00005', ' Hansel colaco', ' Mumbai', 400060 , 'Maharashtra', 2000), ('C00006', ' Deepak sharma', ' Mangalore', 560050, ' Karnataka', 0);
/*printing table client_master*/
SELECT  *
FROM client_master;

/*creating TABLE product_master*/
CREATE TABLE product_master (productno varchar(6), description varchar(15), profitpercent decimal(4, 2), unitmeasure varchar(10), qtyonhand integer, reorderlvl integer, sellprice decimal(8, 2), costprice decimal(8, 2)); 
/*inserting values IN product_master*/
INSERT INTO product_master(productno, description, profitpercent, unitmeasure, qtyonhand, reorderlvl, sellprice, costprice) values('P00001', 'T-Shirt', 5 , 'Piece' , 200 , 50 , 350 , 250), ('P0345', 'Shirts', 6 , 'Piece' , 150 , 50 , 500, 350), ('P06734' , 'Cotton jeans', 5, ' Piece', 100 , 20, 600, 450), ('P07865', 'Jeans', 5, ' Piece', 100, 20, 750, 500), ('P07868', 'Trousers', 2, ' Piece', 150 , 50, 850, 550);
INSERT INTO product_master(productno, description, profitpercent, unitmeasure, qtyonhand, reorderlvl, sellprice, costprice) values('P07885', ' Pull Overs', 2.5 , 'Piece', 80, 30 , 700, 450), ('P07965', ' Denim jeans', 4, ' Piece', 100 , 40 , 350 , 250), ('P07975', ' Lycra tops', 5 , 'Piece', 70, 30, 300, 175), ('P08865', ' Skirts', 5, ' Piece', 75, 30, 450 , 300);
/*printing table product_master*/
SELECT  *
FROM product_master; 

/*creating TABLE salesman_master*/
CREATE TABLE salesman_master(salesmanno varchar(6), salesmanname varchar(20), address1 varchar(30), address2 varchar(30), city varchar(15), pincode integer, state varchar(20), salamt integer, tgttoget decimal(5, 3), remarks varchar(60)); 
/*inserting values IN salesman_master*/
INSERT INTO salesman_master (salesmanno, salesmanname, address1, address2, city, pincode, state ) values('S00001', ' Aman', ' A/14', ' Worli ', 'Mumbai', 400002, ' Maharashtra'), ('S00002', ' Omkar', '65', ' Nariman ', 'Mumbai', 400001 , 'Maharashtra'), ('S00003', ' Raj', ' P-7', ' Bandra', ' Mumbai' , 400032, ' Maharashtra'), ('S00004', ' Ashish' , 'A/5', ' Juhu', ' Mumbai' , 400044, 'Maharashtra');
/*printing table salesman_master*/
SELECT  *
FROM salesman_master; 

/*Finding names of all clients*/
SELECT  Name
FROM client_master;
/*Entire content FROM client master table*/
SELECT  *
FROM client_master; 

/*Retrieve the list of names, city AND the state of all the clients*/
SELECT  Name,city,state
FROM client_master; 
/*List the various products available
FROM the Product_Master table.*/
SELECT  description
FROM product_master ; 

/*List all the clients who are located IN Mumbai.*/
SELECT  Name
FROM client_master
WHERE city = 'Mumbai';
/*Find the names of salesman who have a salary equal to Rs.3000.*/
SELECT  salesmanname
FROM salesman_master
WHERE salamt = 3000; 

/*Change the city of ClientNo ‘C00005’ to ‘Bangalore’.*/
update client_master
SET city = 'Bangalore'
WHERE clientno = 'C00005';

/*Change the BalDue of ClientNo ‘C00001’ to Rs.1000.*/ 
update client_master
SET BalDue = 1000
WHERE clientno = 'C00001';

/*Change the cost price of ‘Trousers’ to rs.950.00*/ 
update product_master
SET costprice = 950.0
WHERE description = 'Trousers'; 

/*Change the city of the salesman to Pune.*/
update salesman_master
SET city = 'Pune'; 
/*Delete all salesman FROM the Salesman_Master whose salaries are equal to Rs.3500.*/ 
delete from salesman_master where salamt = 3500;
 /*Delete all products FROM Product_Master WHERE the quantity ON hand is equal to 100.*/ 
delete
FROM product_master
WHERE qtyonhand = 100;
/*Delete FROM Client_Master WHERE the column state holds the value ‘Tamil Nadu’.*/ 
delete
FROM client_master
WHERE state = 'Tamil Nadu';
/*Add a column called ‘Telephone’ of data type integer to the Client_Master table.*/ 
alter TABLE client_master add Telephone integer;
/*Change the size off SellPrice column IN Product _Master to 10, 2*/ 
alter TABLE product_master modify column sellprice decimal(10, 2);
/*Destroy the TABLE Client_Master along WITH its data.*/
DROP TABLE client_master;
/*Change the name of the Salesman_Master to sman_mast.*/ 
rename TABLE salesman_master to sman_mast