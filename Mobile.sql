CREATE DATABASE mobile;
Use mobile;

create table details_of_mobile(

MOBILE_ID int NOT NULL,
MOBILE_BRAND varchar(45) null,
MOBILE_PRICE double null,
RAM varchar(45) null, 
COLOR varchar(45) null,
CAMERA_SIZE int null,
IS_FINGER_PRINT_SUPPORTED boolean,
OS_TYPE varchar(45) NULL,
PRIMARY KEY (MOBILE_ID)
);
DESCRIBE details_of_mobile;

SELECT * from details_of_mobile;