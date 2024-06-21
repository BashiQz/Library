SELECT 
    b.title AS book_title,
    a.aname AS author_name,
    a.asurname AS author_surname,
    bd.description AS book_description
FROM 
    book b
JOIN 
    author a ON b.author_id = a.author_id
JOIN 
    book_desc bd ON b.book_id = bd.book_id
WHERE 
    a.aname = 'Brandon';

SELECT book_title, author_name, author_surname, book_description FROM vw_books_by WHERE author_name = 'Brandon';

SELECT * FROM vw_lenders_by WHERE client_name = 'Piotr';

SELECT * FROM vw_lenders_by WHERE author_name = 'Brandon';

INSERT INTO lended (stock_id,client_id,lend_date,return_date) VALUES
(35,9,CURRENT_DATE,NULL);

UPDATE lended
SET return_date = CURRENT_DATE
WHERE id_lend = 21;