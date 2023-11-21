USE book_shop;
SELECT * FROM books;

SELECT COUNT(*) AS num_rows FROM books;
SELECT COUNT(DISTINCT author_fname) AS num_authors FROM books;
SELECT COUNT(DISTINCT released_year) AS num_years FROM books;
SELECT COUNT(DISTINCT author_lname) FROM books;
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';
Select * FROM books;