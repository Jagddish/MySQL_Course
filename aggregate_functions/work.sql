-- count all books 
SELECT COUNT(*) from books;

-- count all authorfnames no duplicates 
SELECT COUNT(DISTINCT author_fname) FROM books;

-- print author_fname and last name no duplicates 
SELECT COUNT(DISTINCT author_fname, author_lname) from books;

-- how many titles contains 'the' 
SELECT COUNT(*) from books WHERE title LIKE '%the%';



-- GROUP BY 
SELECT author_lname, author_fname from books group by author_fname;

SELECT author_fname, author_lname, COUNT(*) from books group by author_lname;

SELECT author_fname, author_lname, COUNT(*) from books group by author_fname, author_lname;




[mysqld]
sql-mode=STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION
