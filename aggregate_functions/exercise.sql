-- find the year each author published their first book
select author_fname, author_lname, min(released_year) from books group by author_lname, author_fname;
