CREATE database pet_shop;
use pet_shop;

CREATE TABLE cats 
(
	name VARCHAR(25),
    age INT
);

CREATE TABLE dogs
(
	name Varchar(25),
    breed varchar(25),
    age int
);

SHOW TABLES;

SHOW COLUMNS FROM cats;
SHOW COLUMNS FROM DOGS;
DESC cats;

CREATE TABLE pastries
(
	name VARCHAR(50),
    quantity int
);

DESC pastries;

DROP TABLE pastries;