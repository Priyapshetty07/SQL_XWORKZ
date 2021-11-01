CREATE DATABASE institute;
USE institute;

CREATE TABLE trainers(
 ID INT,
 NAME VARCHAR(25) NOT NULL,
 DOMAIN VARCHAR(30) UNIQUE,
 AGE INT CHECK(AGE>18),
 EXPERIENCE FLOAT,
 SALARY DECIMAL DEFAULT 25000,
 PRIMARY KEY(ID)
 );
 DESCRIBE  trainers;
 SELECT *FROM institute.trainers;
 
 -- error bec age=15 but CHECK condition telling CHECK(AGE>18)
-- INSERT INTO trainers VALUE(1,'OMKAR','FrameWork',15,10,50000.00);

INSERT INTO trainers VALUE(1,'OMKAR','FrameWork',25,10,50000.00);

  -- error bec name is missing --->condition( NOT NULL,)
-- INSERT INTO trainers VALUE(1,'FrameWork',30,10,50000.00);

-- error bec name is skiping----->condition(NOT NULL)
--  INSERT INTO trainers (ID,DOMAIN,AGE,EXEPIRIANCE,SALARY) VALUE (1,'FrameWork',25,10,50000.00);

-- error bec dulpicate used like ID-1 and Domain should be UNIQUE 
-- INSERT INTO trainers (ID,NAME,DOMAIN,AGE,EXEPIRIANCE) VALUE (1,'Asha','FrameWork',25,10);

--- salary is not defined but also its working bec  DEFAULT 25000
INSERT INTO trainers (ID,NAME,DOMAIN,AGE,EXPERIENCE) VALUE (2,'Asha','Java',25,10);

INSERT INTO trainers VALUE(3,'Sathish','Node JS',23,2,25000.00);
INSERT INTO trainers VALUE(4,'Vinya','Mysql',23,2,45000.00);
INSERT INTO trainers VALUE(5,'Sharath','JDBC',25,3,35000.00);
INSERT INTO trainers VALUE(6,'Devendra','JEE',30,8,80000.00);
INSERT INTO trainers VALUE(7,'Kurpa','Spring',28,7,60000.00);
INSERT INTO trainers VALUE(8,'Nikunj','WEB',28,7,60000.00);

SELECT *FROM institute.trainers  ORDER BY NAME;

ALTER TABLE institute.trainers  ADD COLUMN DOB DATE;

UPDATE institute.trainers SET DOB='1984-7-10' WHERE ID=1;
UPDATE institute.trainers SET DOB='1997-12-07' WHERE ID=2;
UPDATE institute.trainers SET DOB='1992-11-20' WHERE ID=3;
UPDATE institute.trainers SET DOB='1999-3-19' WHERE ID=4;
UPDATE institute.trainers SET DOB='1998-5-26' WHERE ID=5;
UPDATE institute.trainers SET DOB='1996-10-30' WHERE ID=6;
UPDATE institute.trainers SET DOB='1994-9-02' WHERE ID=7;
UPDATE institute.trainers SET DOB='1990-8-22' WHERE ID=8;

UPDATE institute.trainers SET SALARY=20000 WHERE ID=6;

DELETE FROM institute.trainers WHERE ID=8;

UPDATE institute.trainers SET EXPERIENCE="0" WHERE ID=3;
 
DELETE FROM  institute.trainers EXPERIENCE WHERE  DOMAIN='JDBC';


