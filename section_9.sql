USE book_shop;
SELECT * FROM books;

SELECT COUNT(*) AS num_rows FROM books;
SELECT COUNT(DISTINCT author_fname) AS num_authors FROM books;
SELECT COUNT(DISTINCT released_year) AS num_years FROM books;
SELECT COUNT(DISTINCT author_lname) FROM books;
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';
Select * FROM books;

SELECT author_lname FROM books 
GROUP BY author_lname;

SELECT author_lname, COUNT(*) as num_books FROM books 
GROUP BY author_lname
ORDER BY num_books DESC;

SELECT released_year, COUNT(*) as num_books FROM books
GROUP BY released_year
ORDER BY num_books DESC;

