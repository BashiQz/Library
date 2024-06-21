-- Indeksy dla tabeli author
CREATE INDEX idx_author_id ON author(author_id);
CREATE INDEX idx_author_name ON author(aname);
CREATE INDEX idx_author_surname ON author(asurname);

-- Indeksy dla tabeli book 
CREATE INDEX idx_book_id ON book(book_id);
CREATE INDEX idx_book_author_id ON book(author_id);

-- Indeksy dla tabeli book_desc 
CREATE INDEX idx_book_desc_book_id ON book_desc(book_id);

-- Indeksy dla tabeli publisher 
CREATE INDEX idx_publisher_pub_id ON publisher(pub_id);
CREATE INDEX idx_publisher_pname ON publisher(pname);

-- Indeksy dla tabeli genre 
CREATE INDEX idx_genre_genre_id ON genre(genre_id);
CREATE INDEX idx_genre_genre_name ON genre(genre_name);

-- Indeksy dla tabeli client 
CREATE INDEX idx_client_client_id ON client(client_id);
CREATE INDEX idx_client_mail ON client(cmail);
CREATE INDEX idx_client_phone ON client(cphone);

-- Indeksy dla tabeli library_stock
CREATE INDEX idx_library_stock_stock_id ON library_stock(stock_id);
CREATE INDEX idx_library_stock_book_id ON library_stock(book_id);