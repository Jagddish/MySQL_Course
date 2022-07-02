-- count all books
SELECT COUNT(*) from books;

-- count all authorfnames no duplicates
SELECT COUNT(DISTINCT author_fname) FROM books;

-- print author_fname and last name no duplicates
SELECT COUNT(DISTINCT author_fname, author_lname) from books;

-- how many titles contains 'the'
SELECT COUNT(*) from books WHERE title LIKE '%the%';



-- GROUP BY
SELECT * from books;
SELECT author_lname, author_fname from books group by author_fname;

SELECT author_fname, author_lname, COUNT(*) from books group by author_lname;

SELECT author_fname, author_lname, COUNT(*) from books group by author_fname, author_lname;

SELECT CONCAT('In ',released_year, ' ',COUNT(*),' Book(s) released) AS year  FROM books GROUP BY released_year;
