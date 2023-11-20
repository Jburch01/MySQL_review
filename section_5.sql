SHOW TABLES;
DROP TABLE cats, cats3, cats2;

CREATE TABLE cats
(
	cat_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
	breed VARCHAR(100),
	age INT
);
DESC cats;
INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
SELECT * FROM cats;
SELECT name FROM cats;
SELECT name, age FROM cats;

SELECT name, age FROM cats 
WHERE age > 4;

SELECT cat_id FROM cats;
SELECT name, breed FROM cats;
SELECT name, age FROM cats
WHERE breed = 'tabby';
SELECT cat_id, age FROM cats
WHERE cat_id = age;

SELECT cat_id AS id, name FROM cats;


SELECT * FROM cats;

UPDATE cats SET breed='Shorthair'
WHERE breed='Tabby';

SET SQL_SAFE_UPDATES = 0;
UPDATE cats SET age=14
WHERE name='Misty';
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
UPDATE cats SET name='Jack'
WHERE name='Jackson';


UPDATE cats SET breed='British Shorthair'
WHERE name='Ringo';

UPDATE cats SET age=12
WHERE breed='Maine Coon';

SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM cats WHERE name='Egg';

DELETE FROM cats WHERE age=4;
DELETE FROM cats WHERE cat_id=age;
DELETE FROM cats;