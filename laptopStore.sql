CREATE DATABASE laptopStore;
USE laptopStore;

  CREATE TABLE laptop_details(
    ID INT,
    COLOR varchar(30),
    BRAND varchar(20),
    PRICE int,
    PROCESSOR varchar (40),
    SCREENSIZE varchar(30),
    WEIGHT INT,
    GRAPHICARD BOOLEAN,
    SCEREENTOUCH BOOLEAN
);
	SELECT*FROM laptop_details;
    
    INSERT INTO laptop_details values (1,'HP','Black',45000,'Intel Core-i5',12,2,true,true);
    INSERT INTO laptop_details values (2,'Dell','Red',6000,'Intel Core-i7',15,3,true,false);
    INSERT INTO laptop_details values (3,'MAC','Silver',95000,'Intel Core-i7',12,4,false,true);
    INSERT INTO laptop_details values (4,'Lenovo','White',55000,'Intel Core-i3',18,3,true,true);
    INSERT INTO laptop_details values (5,'Acer','Gray',35000,'Intel Core-i5',14,5,false,false);
    
select min(price) from laptop_details;
select max(price) from laptop_details;
select avg(price) from laptop_details;
select sum(price) from laptop_details;