CREATE DATABASE Xworkz;

Use Xworkz;

CREATE TABLE student_details(
  ID INT,
  NAME VARCHAR(20),
  EMAIL VARCHAR(35),
  DOB DATE,
  GENDER CHAR,
  LOCATION VARCHAR(50)
  );
DESCRIBE student_details;

ALTER TABLE student_details ADD COLUMN SALARY DECIMAL;
ALTER TABLE student_details DROP SALARY;
ALTER TABLE student_details  ADD COLUMN SALARY DECIMAL AFTER DOB; 

ALTER TABLE student_details RENAME COLUMN LOCATION TO ADDRESS;

ALTER TABLE student_details MODIFY COLUMN SALARY INT;

INSERT INTO student_details VALUE(1,'Priya P Shetty','priya007@gmail.com','1998-10-07',100000,'F','Shimoga');
INSERT INTO student_details VALUE(2,'Diya','diya13@gmail.com','2010-01-13',50000,'F','Shimoga');
INSERT INTO student_details VALUE(3,'Raki','raki07@gmail.com','1994-6-07',40000,'M','Sagar');
INSERT INTO student_details VALUE(4,'Evaa','evaa@gmail.com','2019-8-07',60000,'F','Udupi');
INSERT INTO student_details VALUE(5,'Sachin','sachin10@gmail.com','1996-10-07',30000,'M','Chickmagalur');
INSERT INTO student_details VALUE(6,'Aravi','aravi@gmail.com','1998-10-07',80000,'F','kalasa');
-- we can insert 2 ways
INSERT INTO student_details VALUE(7,'Vikrant','vikrant@gmail.com','1991-5-21',20000,'M','Gadag'),(8,'Pooja','pooja@gmail.com','1998-5-25',95500,'F','Bangalore');

INSERT INTO student_details (ID,NAME,EMAIL,DOB,SALARY,GENDER) VALUE(9,'Chandan','chandan@gmail.com','1997-04-06',52000,'M');
INSERT INTO student_details (ID,NAME) VALUE(10,'Aanya');
INSERT INTO student_details VALUE(11,'Nidhi','nidhi@gmail.com','1993-12-21',52000,'M','#12 2rd cross ashoka nagar shimoga');

SELECT ID,NAME,EMAIL FROM student_details;
SELECT ID,NAME,EMAIL,DOB FROM student_details;

-- OPERATORS
-- Arithmatic-> +,-,*,%,/
-- Comparision-> >,<,=>,=<
-- logical-> AND(&& Compare),OR(|| this or that),NOT(! not equal to )

SELECT * FROM student_details where SALARY=50000;
SELECT * FROM student_details where SALARY>50000;
SELECT * FROM student_details where SALARY<50000;
SELECT * FROM student_details where SALARY!=50000;

SELECT * FROM student_details where ADDRESS='Shimoga';

SELECT * FROM student_details where ADDRESS='Sagar' OR ADDRESS='kalasa';

SELECT * FROM student_details where ADDRESS='Shimoga' AND Gender='F';

SELECT * FROM student_details where ADDRESS !='Udupi';

SELECT * FROM student_details where ADDRESS is Null;
SELECT * FROM student_details where EMAIL != Null;
SELECT * FROM student_details where EMAIL is NOT Null;

-- Duplicate
INSERT INTO student_details VALUE(11,'Nidhi','nidhi@gmail.com','1993-12-21',52000,'M','#12 2rd cross ashoka nagar shimoga');






