-- Select all stories collectionsALTER
-- book title contains stories
SELECT title FROM books WHERE title LIKE 'stories';


-- find the longest book
-- print out the title and page count only one book
SELECT title , pages from books order by pages desc limit 1;

-- print a summary containg the title and year for the 3 most recent book
SELECT CONCAT(title, ' - ', released_year) from books order by released_year desc limit 3;

-- find all books with an author_lname contains. a space 
SELECT title, author_lname FROM books WHERE author_lname LIKE ' %';

-- find the 3 books with the lowest stock title, released_year stockqty 
SELECT title, released_year,stock_quantity from books order by stock_quantity limit 3;

-- print title and author_lname, sorted first author_lname and they by title
SELECT title, author_lname from books order by author_lname, title;

-- sort lastname with msg all caps my favorite author is author-fullnaem!
SELECT CONCAT('MY FAVORITE AUTHOR IS ',UPPER(author_fname),'!') AS yell from books;