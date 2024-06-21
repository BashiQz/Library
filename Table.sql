--Tworzenie tabeli genre
CREATE TABLE genre (
	genre_id bigserial PRIMARY KEY,
	genre_name VARCHAR(50) UNIQUE NOT NULL,
	genre_description VARCHAR(200) NOT NULL
);
--Tworzenie tabeli author
CREATE TABLE Author (
	author_id bigserial PRIMARY KEY,
	aname VARCHAR(50) UNIQUE NOT NULL,
	asurname VARCHAR(50) NOT NULL
);
--Tworzenie tabeli publisher
CREATE TABLE Publisher (
	pub_id bigserial PRIMARY KEY,
	pname VARCHAR(50) UNIQUE NOT NULL
);
--Tworzenie tabeli book
CREATE TABLE BOOK (
	book_id bigserial PRIMARY KEY,
	title VARCHAR(50) NOT NULL,
 	author_id INT,
 	genre_id INT,
 	pub_id INT,
 	FOREIGN KEY (author_id) REFERENCES Author(author_id),
 	FOREIGN KEY (genre_id) REFERENCES genre(genre_id),
 	FOREIGN KEY (pub_id) REFERENCES Publisher(pub_id)
);
--Tworzenie tabeli book_desc
CREATE TABLE BOOK_desc (
	desc_id bigserial PRIMARY KEY,
	book_id INT,
	series VARCHAR(50),
	n_in_series SMALLINT,
	m_n_in_series SMALLINT,
	description VARCHAR(300),
	FOREIGN KEY (book_id) REFERENCES BOOK(book_id)
);
--Tworzenie tabeli client
CREATE TABLE client (
	client_id bigserial PRIMARY KEY,
 	cname VARCHAR(50) UNIQUE NOT NULL,
 	csurnam VARCHAR(50) NOT NULL,
 	cmail VARCHAR(50) NOT NULL,
 	cphone VARCHAR(50) NOT NULL
);
 --Tworzenie tabeli library_stock
 CREATE TABLE library_stock (
	stock_id bigserial PRIMARY KEY,
	book_id INT,
	in_stock SMALLINT NOT NULL,
	possible_stock SMALLINT NOT NULL,
	FOREIGN KEY (book_id) REFERENCES BOOK(book_id)
);
--Tworzenie tabeli lended
CREATE TABLE lended (	
	id_lend bigserial PRIMARY KEY,
 	stock_id INT,
 	client_id INT,
 	lend_date DATE,
    return_date DATE,
	FOREIGN KEY (stock_id) REFERENCES library_stock(stock_id),
	FOREIGN KEY (client_id) REFERENCES client(client_id)
);


