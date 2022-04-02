-- reverse and uppercase the following sentence
-- why does my cat look at me with such hatred?
SELECT REVERSE(UPPER('why does my cat look at me with such hatred?'));


-- Replace all the spaces in book title with '->' and column name as title 
SELECT REPLACE(title, ' ', '->') AS title FROM books;


-- Print authors lastname in one column and print these in reverse in another column , columns names should be
-- forward, backward 
SELECT author_lname AS forward, REVERSE(author_lname) as backward FROM books;


-- print full author name in CAPS titled as 'full name in caps'
SELECT UPPER(CONCAT(author_fname ,' ',author_lname)) AS 'full name in caps' FROM books;


-- print book name with 'was released in ' year of release titled as blurb
SELECT CONCAT(title, ' was released in ', released_year) AS 'blurb' FROM books; 


-- print the book title with char length of each book titled as title , character count 
SELECT title, CHAR_LENGTH(title) as 'character count' FROM books;


-- print short title first 10 char of title with ... , author with 'lastname,firstname' , quantity 'stock in stock'
SELECT
  CONCAT(SUBSTRING(title, 1, 10), '...') AS title,
  CONCAT(author_lname, ' ', author_fname) AS 'author',
  CONCAT(stock_quantity, ' in stock') AS 'quantity'
FROM books;


SELECT REPLACE(CONCAT('I',' ','like',' ','cats'),' ','-');