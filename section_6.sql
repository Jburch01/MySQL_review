CREATE DATABASE clothes;
USE clothes;
CREATE TABLE shirts (
	id INT AUTO_INCREMENT PRIMARY KEY,
    article VARCHAR(20) NOT NULL,
    color VARCHAR(20) NOT NULL,
    size VARCHAR(5) NOT NULL,
    last_worn INT NOT NULL
);

INSERT INTO shirts(article, color, size, last_worn)
Values 
	('t-shirt', 'white', 'S', 10),
	('t-shirt', 'green', 'S', 200),
	('polo shirt', 'black', 'M', 10),
	('tank top', 'blue', 'S', 50),
	('t-shirt', 'pink', 'S', 0),
	('polo shirt', 'red', 'M', 5),
	('tank top', 'white', 'S', 200),
	('tank top', 'blue', 'M', 15);
    
INSERT INTO shirts(article, color, size, last_worn)
VALUES ('polo shirt', 'purple', 'M', 50);
    
SELECT article, color FROM shirts;

SELECT article, color, size, last_worn FROM shirts
WHERE size='M';

SET SQL_SAFE_UPDATES = 0;
UPDATE shirts SET size='L'
WHERE article = 'polo shirt';


UPDATE shirts SET last_worn=0
WHERE last_worn=15;

UPDATE shirts set color='off white', size='XS'
WHERE color = 'white';

DELETE FROM shirts
WHERE last_worn=200;

DELETE FROM shirts
WHERE article='tank top';

DELETE FROM shirts;

DROP TABLE shirts;

SET SQL_SAFE_UPDATES = 1;





