CREATE DATABASE car;
Use car;

create table details_of_car(

CAR_NUMBER int NOT NULL,
CAR_BRAND varchar(45) null,
CAR_PRICE double null,
COLOR varchar(45) null, 
NO_OF_SEAT int null,
IS_AIRROOF_SUPPORT boolean,
TYPE_OF_ENGINE varchar(45) NULL,
PRIMARY KEY (CAR_NUMBER)
);
DESCRIBE details_of_car;

SELECT * from details_of_car;