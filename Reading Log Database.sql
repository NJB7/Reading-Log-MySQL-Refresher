USE reading_log;

SELECT * 
FROM author;

SELECT *
FROM book;

SELECT *
FROM publisher;

SELECT *
FROM translator;

-------------------------------------------------------CREATE AUTHOR--------------------------------------------------------------

CREATE TABLE author(
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_country VARCHAR(30),
    current_country VARCHAR(30),
    country_details VARCHAR(50),
    gender VARCHAR(20),
    bipoc TINYINT,
    lgbtq TINYINT,
    disabled TINYINT,
    author_details VARCHAR(50)
);


INSERT INTO author 
(first_name, last_name, birth_country, current_country, country_details,
gender, bipoc, lgbtq, disabled, author_details) 
VALUES
('Clayton', 'Thomas-Muller', 'Canada', 'Canada', 'Cree', "M", 1,0,0,NULL),
('Robert M.', 'Sapolsky', 'US', 'US', NULL, "M", 0,0,0,NULL),
('Dina', 'Gilio-Whitaker', 'US', 'US', 'Colville Confederated Tribes', "F", 1,0,0,NULL);

-- ('', '', '', '', '', '', '', '', '', '', '', ''),
-- ('', '', '', '', '', '', '', '', '', '', '', ''),

-------------------------------------------------------CREATE BOOK & CONNECT TO AUTHOR-------------------------------------------------

CREATE TABLE book(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    book_title VARCHAR(1000),
    started_reading DATE,
    finished_reading DATE,
    if_read TINYINT(1),
    pages INT,
    book_format VARCHAR(20),
    fiction_non_fiction VARCHAR(20),
    frontlist_backlist VARCHAR(20),
    original_language VARCHAR(50),
    language_read VARCHAR(50),
    my_source VARCHAR(10),
    bookshelf VARCHAR(50),
    author_id INT,
    FOREIGN KEY (author_id) 
        REFERENCES author(author_id) 
        ON DELETE SET NULL
);

INSERT INTO book 
(book_title, started_reading, finished_reading, if_read, pages, book_format, 
fiction_non_fiction, frontlist_backlist, original_language, language_read, my_source, bookshelf, author_id)
VALUES
('Life in the City of Dirty Water: A Memoir of Healing', '2021-11-10', '2022-01-18', 1, 200, 'Audio', 'N', 'F', 'English', 'English', 'Library', 'books-from-the-library', 1),
('Stress and Your Body', '2022-01-30', '2022-01-30', 1, 200, 'Audio', 'N', 'B', 'English', 'English', 'Home', 'audible', 2),
('As Long as Grass Grows: The Indigenous Fight for Environmental Justice, from Colonization to Standing Rock', '2022-01-30', '2022-02-03', 1, 224, 'Audio', 'N', 'F', 'English', 'English', 'Library', 'books-from-the-library', 3);


-- ('', '', '', , , '', '', '', '', '', '', '', , , ),
-- ('', '', '', , , '', '', '', '', '', '', '', , , ),
-- ('', '', '', , , '', '', '', '', '', '', '', , , );

SELECT * 
FROM author;

SELECT *
FROM book;

ALTER TABLE author
ADD book_id INT;

ALTER TABLE author
ADD FOREIGN KEY (book_id) 
    REFERENCES book(book_id) 
    ON DELETE SET NULL;

UPDATE author
SET book_id = 1
WHERE author_id = 1;

UPDATE author
SET book_id = 2
WHERE author_id = 2;

UPDATE author
SET book_id = 3
WHERE author_id = 3;

-------------------------------------------------------CREATE PUBLISHER----------------------------------------------------------


CREATE TABLE publisher(
    publisher_id INT PRIMARY KEY AUTO_INCREMENT,
    publisher_name VARCHAR(50),
    imprint_name VARCHAR(50),
    city VARCHAR(30),
    country VARCHAR(30),
	author_id INT,
	book_id INT
);

INSERT INTO publisher
(publisher_name , imprint_name , city , country, author_id, book_id) 
VALUES
('Penguin Random House Canada', 'Allen Lane', 'Toronto', 'Canada', 1, 1),
('The Great Courses', 'NULL', 'Chantilly', 'US', 1, 1),
('Beacon Press', 'NULL', 'Boston', 'US', 1, 1);


-- ('', '', '', '', , ),
-- ('', '', '', '', , ),


SELECT *
FROM publisher;
-------------------------------------------------------CREATE TRANSLATOR----------------------------------------------------------


CREATE TABLE translator(
    translator_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_country VARCHAR(30),
    current_country VARCHAR(30),
    country_details VARCHAR(50),
	book_id INT,
	publisher_id INT
);

INSERT INTO translator
(first_name, last_name, birth_country, current_country, country_details, book_id, publisher_id) 
VALUES
('', '', '', '', NULL, , ),
('', '', '', '', NULL, , ),
('', '', '', '', NULL, , );


-- ('', '', '', '', '', , ),
-- ('', '', '', '', '', , ),


SELECT *
FROM translator;

-------------------------------------------------------CHECK WORK----------------------------------------------------------

SELECT * 
FROM author;

SELECT *
FROM book;

SELECT *
FROM publisher;

SELECT *
FROM translator;

-------------------------------------------------------QUERIES----------------------------------------------------------

SELECT * 
FROM author
ORDER BY last_name;



