-- Min
SELECT MIN(pages) FROM books;

--MAX
SELECT MAX(pages) FROM books;

-- Max pages with title ?
SELECT title, pages from books where pages=(select MAX(pages) from books);

-- using with ordery by same query
SELECT title, pages from books order by pages limit 1;

SELECT title, pages from books order by pages desc limit 1;
