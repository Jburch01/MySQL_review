USE pet_shop;
DESCRIBE cats;
INSERT INTO cats (name, age)
VALUES ("Blue Steele", 11);
INSERT INTO cats (name, age)
 VALUES ("Jenkins", 7);
 
SELECT * FROM cats;

INSERT INTO cats(age, name)
VALUES(2, "Beth");

INSERT INTO cats(name, age)
Values("John", 3),
	("Turkey", 1),
    ("PotatoFace", 13);
    
    Create Table people(
    first_name Varchar(20),
    last_name Varchar(20),
    age int);
    
    INSERT INTO people(first_name, last_name, age)
    VALUES ("Tina", "Belcher", 13),
    ("Bob", "Belcher", 42),
    ("Linda", "Belcher", 45),
    ("Philip", "Frond", 38),
    ("Calvin", "Fischoeder", 70);
    
    SELECT * FROM people;
    
    DESC cats;
    
    INSERT INTO cats(name)
    VALUES ("Tod");
    
    SELECT * FROM cats;
    
    CREATE TABLE cats2
    (
    name VARCHAR(100) NOT NULL,
    age Int NOT NULL
    );
    
    INSERT INTO cats2(name, age)
    Values("Bilbo", 15);
   SELECT * FROM cats2;
   
   DESC cats2;
  
  
  CREATE TABLE cats3
  (
	name VARCHAR(100) DEFAULT 'unnamed',
    age int DEFAULT 99
  );
  
  INSERT INTO cats3(age) Values(2);
  INSERT INTO cats3() Values();
  SELECT * FROM cats3;
  
  CREATE TABLE unique_cats(
	cat_id INT NOT NULL PRIMARY KEY, 
    name VARCHAR(100),
    age INT
  );
  
DESC unique_cats;

Create Table unique_cats2(
cat_id INT AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(100),
age INT);

CREATE TABLE Employees(
	id INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(20) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    middle_name VARCHAR(20),
    age INT NOT NULL,
    current_status VARCHAR(50) NOT NULL DEFAULT 'employed'
);
DESC Employees;

DROP TABLE Employees;


