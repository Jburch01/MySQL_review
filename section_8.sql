USE book_shop;
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
           
SELECT * FROM books;
SELECT DISTINCT author_lname FROM books;

SELECT released_year FROM books;
SELECT DISTINCT released_year FROM books;

SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) as unique_full_name FROM books;
SELECT DISTINCT author_fname, author_lname FROM books;

SELECT book_id, title, author_lname FROM books
ORDER BY book_id DESC;

SELECT title, pages FROM books
ORDER BY pages DESC;

SELECT title, pages FROM books
ORDER BY released_year;

SELECT book_id, author_fname, author_lname, pages FROM books
ORDER BY 4;

SELECT author_lname, released_year, title FROM books
ORDER BY author_lname, released_year ;

SELECT CONCAT(author_lname, ' ', author_lname) AS author FROM books
ORDER BY author;

SELECT * FROM books ORDER BY released_year LIMIT 10;
SELECT book_id, title, released_year FROM books
ORDER BY released_year LIMIT 2, 6;

SELECT title, author_fname, author_lname FROM books 
WHERE author_fname LIKE '%da%';

SELECT * FROM books WHERE title LIKE '%:%';

SELECT * FROM books WHERE author_fname LIKE '_____';
SELECT * FROM books WHERE author_fname LIKE '%';

SELECT * FROM books WHERE author_fname LIKE '_';
SELECT * FROM books WHERE author_fname LIKE '%n';

SELECT * FROM books WHERE title LIKE '%\%%';
SELECT * FROM books WHERE title LIKE '%\_%';

SELECT * FROM books;
SELECT title FROM books WHERE title LIKE '%stories%'; 
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
SELECT CONCAT(title, ' - ', released_year) AS summary FROM books ORDER BY  released_year DESC LIMIT 3;
SELECT title, author_lname FROM books where author_lname LIKE '% %';
SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity LIMIT 3;
SELECT title, author_lname FROM books ORDER BY author_lname, title;
SELECT UPPER(CONCAT('my favorite author is ', author_fname, ' ', author_lname)) AS yell FROM books ORDER BY author_lname;





