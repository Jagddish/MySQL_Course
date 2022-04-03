-- print only DISTINCT values which means no duplicates 
SELECT DISTINCT author_lname FROM books;

SELECT DISTINCT released_year FROM books;

-- DISTINCT full Name 

SELECT DISTINCT CONCAT(author_fname, ' ',author_lname) FROM books;

-- DISTINCT Both names 
 SELECT DISTINCT author_fname, author_lname FROM books;
 
 
 
 
 
 
 -- Sorting with ORDER BY
 SELECT author_fname from books order by author_fname;
 
 SELECT title FROM books order by title;
 
 -- sort by desc 
 SELECT title FROM books order by title desc;
 
 SELECT released_year FROM books order by released_year;
 
 -- print title, year, pages with higher pages desc 
 SELECT title, released_year, pages FROM books ORDER BY pages;
 
 SELECT title, author_fname, author_lname FROM books ORDER BY 2;
 
 -- You can order by two columns !!!
 SELECT author_fname, author_lname FROM books ORDER BY author_lname, author_fname;
  SELECT author_fname, author_lname FROM books ORDER BY author_fname, author_lname;
  
  
  
  
  
  
  -- Limiting results 
  SELECT * FROM books LIMIT 5;
  
  -- list latest released top 5 books
  SELECT * FROM books ORDER BY released_year DESC LIMIT 5;
  
  
  
  -- Searching with LIKE 
  SELECT author_fname from books WHERE author_fname LIKE '%da%';
  
  -- I want names that start with da
  SELECT author_fname FROM books WHERE author_fname LIKE 'da%';
  
  -- I want name that ends with da
    SELECT author_fname FROM books WHERE author_fname LIKE '%da';

-- using LIKE '____'; 4 underscores 

SELECT author_fname ,stock_quantity from books where author_fname LIKE '__';

-- Using wildcard symbols for searching ??
-- to use wildcard sybols for searching we hv to use \ backslash
SELECT title from books WHERE title LIKE '%\%%';