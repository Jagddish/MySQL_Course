-- What if I want fullnames  ?

-- CONCAT 2 columns ?
SELECT CONCAT(author_fname, ' ',author_lname) FROM books; -- this includes some space in between.

-- CONCAT With some other text ?
SELECT CONCAT(author_fname ,' has ',author_lname, ' as last name ') FROM books; -- Space in text does matter!

-- Naming output tablename using alias?

SELECT CONCAT(author_fname ,' has ',author_lname, ' as last name ')AS 'Full Name' FROM books;

-- CONCAT with COLUMN Names
SELECT author_fname AS 'FIRST', author_lname AS 'LAST', CONCAT(author_fname,' ',author_lname) AS 'FULL NAME' FROM books;

-- Using a Separator 
SELECT CONCAT_WS(' - ', title, author_fname, author_lname) AS 'USING A SEPARATOR' FROM books;


-- SUBSTRING

SELECT SUBSTRING('Hello World', 1, 4);

SELECT SUBSTRING('Hello World', 7);

SELECT SUBSTRING('Hello World', -3);

-- Short title
SELECT CONCAT
	(
		SUBSTRING(title, 1, 10), 
		'...'
	) 
    AS 'short title'
FROM books;


-- Replace a letter in a column
SELECT REPLACE(title, 'e', '0') from books; -- this will replace all e with 0

-- Concat , substring, replace all in one 
SELECT CONCAT(SUBSTRING(REPLACE(title,'e','0'),1,10),'...') AS 'Weird Title' FROM books;

-- SUBSTRING, REPLACE
SELECT SUBSTRING(REPLACE(title, 'e', '0'), 1,10) AS TITLE FROM books;

-- REVERSE
SELECT CONCAT('woof ', REVERSE('woof'));

SELECT CHAR_LENGTH('Hello World');

SELECT author_fname, CHAR_LENGTH(author_fname) as last from books; 

-- Describe last name with length of characters it has
SELECT CONCAT(author_lname, ' is ', char_length(author_lname), ' characters long') as 'Count' from books;

-- Uppercase and Lowercase 
SELECT UPPER('hello world');
SELECT LOWER('HELLO WORLD');

-- Print all books titles in Uppercase with msg saying my favourite book is
SELECT CONCAT('MY FAVORITE BOOK IS ',UPPER(title)) AS MSG FROM books;
SELECT CONCAT('MY FAVORITE BOOK IS ',LOWER(title)) AS MSG FROM books;