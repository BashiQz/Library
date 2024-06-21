--Widok, który umożliwia wyświetlanie informacji o książce.
CREATE OR REPLACE VIEW vw_book_info AS
SELECT 
    b.book_id,
    b.title AS book_title,
    a.aname AS author_name,
    a.asurname AS author_surname,
    bd.series,
    bd.n_in_series,
    bd.m_n_in_series,
    bd.description AS book_description,
    p.pname AS publisher_name,
    g.genre_name
FROM 
    book b
JOIN 
    author a ON b.author_id = a.author_id
JOIN 
    book_desc bd ON b.book_id = bd.book_id
JOIN 
    publisher p ON b.pub_id = p.pub_id
JOIN 
    genre g ON b.genre_id = g.genre_id;

-- Widok używany do uproszczonego użytku poprzedniego
CREATE OR REPLACE VIEW vw_books_by AS
SELECT 
    book_id,
    book_title,
    author_name,
    author_surname,
    series,
    n_in_series,
    m_n_in_series,
    book_description,
    publisher_name,
    genre_name
FROM 
    vw_book_info;


    --Widok, który umożliwia wyświetlanie informacji o wypożyczonych pozycjach.
CREATE OR REPLACE VIEW vw_lenders AS
SELECT 
    b.book_id,
    b.title AS book_title,
    a.aname AS author_name,
    a.asurname AS author_surname,
    l.client_id,
    c.cname AS client_name,
    c.csurnam AS client_surname,
    c.cmail AS client_mail,
    c.cphone AS client_phone,
    l.lend_date,
    l.return_date
FROM 
    lended l
JOIN 
    library_stock ls ON l.stock_id = ls.stock_id
JOIN 
    book b ON ls.book_id = b.book_id
JOIN 
    author a ON b.author_id = a.author_id
JOIN 
    client c ON l.client_id = c.client_id;

    --

CREATE OR REPLACE VIEW vw_lenders_by AS
SELECT 
    book_id,
    book_title,
    author_name,
    author_surname,
    client_id,
    client_name,
    client_surname,
    client_mail,
    client_phone,
    lend_date,
    return_date
FROM 
    vw_lenders;