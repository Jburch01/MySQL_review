CREATE DATABASE book_shop;
USE book_shop;



CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

SELECT * FROM books;
SELECT CONCAT(author_fname, ' ', author_lname) AS name FROM books;

SELECT CONCAT_WS('-', title, author_fname, author_lname) AS name FROM books;

SELECT SUBSTRING('hello world', 1, 4);

SELECT SUBSTRING('hello world', 7);

SELECT SUBSTRING('hello world', -1);

SELECT title FROM books;

SELECT SUBSTRING(title, 1, 15) FROM books;
SELECT SUBSTR(author_lname, 1, 1) AS initial, author_lname FROM BOOKS;

SELECT CONCAT(SUBSTR(title, 1, 10) , '...') as short_title FROM books;
SELECT * FROM books;

SELECT 
    CONCAT(SUBSTR(author_fname, 1, 1),
            '.',
            SUBSTR(author_lname, 1, 1),
            '.') AS author_initial
FROM
    books;
    
SELECT REPLACE(title, ' ', '-') FROM books;
SELECT REVERSE(title) FROM books;
    
SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;

SELECT CHAR_Length('hello world');
SELECT Char_Length(title) AS len, title FROM books;

SELECT LOWER(title) FROM books;
SELECT LCASE(title) FROM books;

SELECT UPPER(title) FROM books;
SELECT UCASE(CONCAT('i love ', title, ' !!!'))AS passionate FROM books;

SELECT INSERT ('Quadratic', 3, 4, 'What');
SELECT INSERT ('Quadratic', -1, 4, 'What');
SELECT INSERT ('Quadratic', 3, 100, 'What');

SELECT INSERT('Hello Bobby', 6, 0, 'There');
SELECT INSERT('Hello Bobby', 6, 4, 'There');

SELECT LEFT('omghahalol!', 3);
SELECT RIGHT('omghahalol!', 4);
SELECT LEFT (author_lname, 1) FROM books;

SELECT REPEAT('ha', 4);

SELECT TRIM('   Boston ');
SELECT TRIM('   San Antonio ');

SELECT TRIM(LEADING'.'FROM   '...San Antonio....');
SELECT TRIM(TRAILING'.' FROM   '...San Antonio....');
SELECT TRIM(BOTH '.' FROM   '...San Antonio....');

#Exercise 
SELECT REVERSE(UPPER('Why does my cat look at me with such hartred?'));

SELECT REPLACE(title, ' ', '->') AS title FROM books;

SELECT author_lname AS forwards, REVERSE(author_lname) AS backwards FROM books;

SELECT CONCAT(UPPER(author_fname), ' ', UPPER(author_lname)) AS 'full name in caps' FROM books;

SELECT * FROM books;
SELECT CONCAT(title, ' was released in ',  released_year) AS blurb FROM books;
 
 SELECT title,  Char_Length(title) AS 'character count' FROM books;
 
 SELECT INSERT(title, 11, 1000, '...') AS 'short title', 
 CONCAT(author_lname, ',', author_fname) AS author, 
 CONCAT(stock_quantity, ' in stock') AS quantity FROM books;
 
 


