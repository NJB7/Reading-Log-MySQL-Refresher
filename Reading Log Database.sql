USE reading_log;
SELECT
  *
FROM
  author;
SELECT
  *
FROM
  book;
SELECT
  *
FROM
  publisher;
SELECT
  *
FROM
  translator;
-------------------------------------------------------CREATE AUTHOR--------------------------------------------------------------
  --   CREATE TABLE author(
  --     author_id INT PRIMARY KEY AUTO_INCREMENT,
  --     first_name VARCHAR(50),
  --     last_name VARCHAR(50),
  --     birth_country VARCHAR(30),
  --     current_country VARCHAR(30),
  --     country_details VARCHAR(50),
  --     gender VARCHAR(20),
  --     bipoc TINYINT,
  --     lgbtq TINYINT,
  --     disabled TINYINT,
  --     author_details VARCHAR(50)
  --   );
  -- INSERT INTO
  --   author (
  --     first_name,
  --     last_name,
  --     birth_country,
  --     current_country,
  --     country_details,
  --     gender,
  --     bipoc,
  --     lgbtq,
  --     disabled,
  --     author_details
  --   )
  -- VALUES
  --   (
  --     'Clayton',
  --     'Thomas-Muller',
  --     'Canada',
  --     'Canada',
  --     'Cree',
  --     "M",
  --     1,
  --     0,
  --     0,
  --     NULL
  --   ),
  --   (
  --     'Robert M.',
  --     'Sapolsky',
  --     'US',
  --     'US',
  --     NULL,
  --     "M",
  --     0,
  --     0,
  --     0,
  --     NULL
  --   ),
  --   (
  --     'Dina',
  --     'Gilio-Whitaker',
  --     'US',
  --     'US',
  --     'Colville Confederated Tribes',
  --     "F",
  --     1,
  --     0,
  --     0,
  --     NULL
  --   );
  -- INSERT INTO
  --   author (
  --     first_name,
  --     last_name,
  --     birth_country,
  --     current_country,
  --     country_details,
  --     gender,
  --     bipoc,
  --     lgbtq,
  --     disabled
  --   )
  -- VALUES
  --   (
  --     'Monica',
  --     'Gagliano',
  --     'Australia',
  --     'Australia',
  --     NULL,
  --     'F',
  --     0,
  --     0,
  --     0
  --   ),
  --   (
  --     'Katherena',
  --     'Vermette',
  --     'Canada',
  --     'Canada',
  --     'Métis',
  --     'F',
  --     1,
  --     0,
  --     0
  --   ),
  --   (
  --     'H. Craig',
  --     'Heller',
  --     'US',
  --     'US',
  --     NULL,
  --     'M',
  --     0,
  --     0,
  --     0
  --   ),
  --   (
  --     'Yrsa',
  --     'Sigurðardóttir',
  --     'Iceland',
  --     'Iceland',
  --     NULL,
  --     'F',
  --     0,
  --     0,
  --     0
  --   ),
  --   (
  --     'Bernd',
  --     'Brunner',
  --     'Canada',
  --     'Canada',
  --     NULL,
  --     'F',
  --     0,
  --     0,
  --     0
  --   );
  -- INSERT INTO
  --   author (
  --     first_name,
  --     last_name,
  --     birth_country,
  --     current_country,
  --     country_details,
  --     gender,
  --     bipoc,
  --     lgbtq,
  --     disabled
  --   )
  -- VALUES
  --   (
  --     'Emma',
  --     'Marris',
  --     'US',
  --     'US',
  --     NULL,
  --     'F',
  --     0,
  --     0,
  --     0
  --   ),
  --   (
  --     'Linda Kay',
  --     'Klein',
  --     'US',
  --     'US',
  --     NULL,
  --     'F',
  --     0,
  --     0,
  --     0
  --   ),
  --   (
  --     'Stephen',
  --     'Nowicki',
  --     'US',
  --     'US',
  --     NULL,
  --     'M',
  --     0,
  --     0,
  --     0
  --   ),
  --   (
  --     'Thich',
  --     'Nhat Hanh',
  --     'Vietnam',
  --     'France',
  --     NULL,
  --     'M',
  --     1,
  --     0,
  --     0
  --   ),
  --   (
  --     'Gayle Tzemach',
  --     'Lemmon',
  --     'US',
  --     'US',
  --     NULL,
  --     'F',
  --     0,
  --     0,
  --     0
  --   ),
  --   (
  --     'Gord',
  --     'Hill',
  --     'Canada',
  --     'Canada',
  --     'Kwakwaka''wakw',
  --     'M',
  --     1,
  --     0,
  --     0
  --   ),
  --   (
  --     'Mary Siisip',
  --     'Geniusz',
  --     'Canada',
  --     'Canada',
  --     'Cree',
  --     'F',
  --     1,
  --     0,
  --     0
  --   ),
  --   (
  --     'Kimi Cunningham',
  --     'Grant',
  --     'US',
  --     'US',
  --     NULL,
  --     'F',
  --     0,
  --     0,
  --     0
  --   ),
  --   (
  --     'Eric R.',
  --     'Kandel',
  --     'US',
  --     'US',
  --     NULL,
  --     'M',
  --     0,
  --     0,
  --     0
  --   ),
  --   (
  --     'Catherine',
  --     'Kleier',
  --     'US',
  --     'US',
  --     NULL,
  --     'F',
  --     0,
  --     0,
  --     0
  --   ),
  --   (
  --     'Xiaolong',
  --     'Qiu',
  --     'China',
  --     'US',
  --     NULL,
  --     'M',
  --     1,
  --     0,
  --     0
  --   ),
  --   (
  --     'Marilynne',
  --     'Robinson',
  --     'US',
  --     'US',
  --     NULL,
  --     'F',
  --     0,
  --     0,
  --     0
  --   );
  -- ('', '', '', '', NULL, '',,,);
SELECT
  *
FROM
  author;
SELECT
  *
FROM
  book;
-------------------------------------------------------CREATE BOOK & CONNECT TO AUTHOR-------------------------------------------------
  --   CREATE TABLE book(
  --     book_id INT PRIMARY KEY AUTO_INCREMENT,
  --     book_title VARCHAR(1000),
  --     started_reading DATE,
  --     finished_reading DATE,
  --     if_read TINYINT(1),
  --     pages INT,
  --     book_format VARCHAR(20),
  --     fiction_non_fiction VARCHAR(20),
  --     frontlist_backlist VARCHAR(20),
  --     original_language VARCHAR(50),
  --     language_read VARCHAR(50),
  --     my_source VARCHAR(10),
  --     bookshelf VARCHAR(50),
  --     author_id INT,
  --     FOREIGN KEY (author_id) REFERENCES author(author_id) ON DELETE
  --     SET
  --       NULL
  --   );
  -- INSERT INTO
  --   book (
  --     book_title,
  --     started_reading,
  --     finished_reading,
  --     if_read,
  --     pages,
  --     book_format,
  --     fiction_non_fiction,
  --     frontlist_backlist,
  --     original_language,
  --     language_read,
  --     my_source,
  --     bookshelf,
  --     author_id
  --   )
  -- VALUES
  --   (
  --     'Life in the City of Dirty Water: A Memoir of Healing',
  --     '2021-11-10',
  --     '2022-01-18',
  --     1,
  --     200,
  --     'Audio',
  --     'N',
  --     'F',
  --     'English',
  --     'English',
  --     'Library',
  --     'books-from-the-library',
  --     1
  --   ),
  --   (
  --     'Stress and Your Body',
  --     '2022-01-30',
  --     '2022-01-30',
  --     1,
  --     200,
  --     'Audio',
  --     'N',
  --     'B',
  --     'English',
  --     'English',
  --     'Home',
  --     'audible',
  --     2
  --   ),
  --   (
  --     'As Long as Grass Grows: The Indigenous Fight for Environmental Justice, from Colonization to Standing Rock',
  --     '2022-01-30',
  --     '2022-02-03',
  --     1,
  --     224,
  --     'Audio',
  --     'N',
  --     'F',
  --     'English',
  --     'English',
  --     'Library',
  --     'books-from-the-library',
  --     3
  --   );
  -- INSERT INTO
  --   book (
  --     book_title,
  --     pages,
  --     book_format,
  --     fiction_non_fiction,
  --     frontlist_backlist,
  --     original_language,
  --     language_read,
  --     my_source,
  --     bookshelf,
  --     pub_date,
  --     author_id
  --   )
  -- VALUES
  --   (
  --     'Thus Spoke the Plant: A Remarkable Journey of Groundbreaking Scientific Discoveries
  -- and Personal Encounters with Plants',
  --     176,
  --     'Audio',
  --     'N',
  --     'F',
  --     'English',
  --     'English',
  --     'Library',
  --     'books-from-the-library',
  --     '2018-11-13',
  --     4
  --   ),
  --   (
  --     'The Strangers',
  --     337,
  --     'Audio',
  --     'F',
  --     'F',
  --     'English',
  --     'English',
  --     'Home',
  --     'fiction-adult-2015-present',
  --     '2021-09-28',
  --     5
  --   ),
  --   (
  --     'Secrets of Sleep Science: From Dreams to Disorders',
  --     150,
  --     'Audio',
  --     'N',
  --     'B',
  --     'English',
  --     'English',
  --     'Home',
  --     'audible',
  --     '2013-07-08',
  --     6
  --   ),
  --   (
  --     'Why Did You Lie?',
  --     384,
  --     'Paper',
  --     'F',
  --     'B',
  --     'Icelandic',
  --     'English',
  --     'Home',
  --     'fiction-adult-mystery',
  --     '2016-08-11',
  --     7
  --   ),
  --   (
  --     'Winterlust: Finding Beauty in the Fiercest Season',
  --     288,
  --     'Paper',
  --     'N',
  --     'F',
  --     'English',
  --     'English',
  --     'Home',
  --     'sociology',
  --     '2019-02-05',
  --     8
  --   ),
  --   (
  --     'Wild Souls: Freedom and Flourishing in the Non-Human World',
  --     352,
  --     'Audio',
  --     'N',
  --     'F',
  --     'English',
  --     'English',
  --     'Library',
  --     'books-from-the-library',
  --     '2018-09-04',
  --     9
  --   ),
  --   (
  --     'Pure: Inside the Evangelical Movement That Shamed a Generation of Young Women
  -- and How I Broke Free',
  --     341,
  --     'Audio',
  --     'N',
  --     'F',
  --     'English',
  --     'English',
  --     'Library',
  --     'audible',
  --     '2021-06-29',
  --     10
  --   ),
  --   (
  --     'Biology: The Science of Life',
  --     400,
  --     'Audio',
  --     'N',
  --     'B',
  --     'English',
  --     'English',
  --     'Home',
  --     'audible',
  --     '2004-01-01',
  --     11
  --   ),
  --   (
  --     'Zen and the Art of Saving the Planet',
  --     150,
  --     'Audio',
  --     'N',
  --     'F',
  --     'English',
  --     'English',
  --     'Library',
  --     'books-from-the-library',
  --     '2021-10-05',
  --     12
  --   ),
  --   (
  --     'The Daughters of Kobani: A Story of Rebellion, Courage, and Justice',
  --     288,
  --     'Audio',
  --     'N',
  --     'F',
  --     'English',
  --     'English',
  --     'Library',
  --     'books-from-the-library',
  --     '2021-02-16',
  --     13
  --   ),
  --   (
  --     'The 500 Years of Indigenous Resistance Comic Book: Revised and Expanded',
  --     144,
  --     'Paper',
  --     'N',
  --     'F',
  --     'English',
  --     'English',
  --     'Borrowed',
  --     'books-borrowed',
  --     '2021-10-12',
  --     14
  --   ),
  --   (
  --     'Plants Have So Much to Give Us, All We Have to Do Is Ask: Anishinaabe Botanical Teachings',
  --     344,
  --     'Paper',
  --     'N',
  --     'F',
  --     'English',
  --     'English',
  --     'Home',
  --     'earth-plants-etc',
  --     '2015-06-22',
  --     15
  --   ),
  --   (
  --     'These Silent Woods',
  --     288,
  --     'Paper',
  --     'F',
  --     'F',
  --     'English',
  --     'English',
  --     'Home',
  --     'fiction-adult-2015-present',
  --     '2021-05-16',
  --     16
  --   ),
  --   (
  --     'The Disordered Mind: What Unusual Brains Tell Us about Ourselves',
  --     304,
  --     'Audio',
  --     'N',
  --     'B',
  --     'English',
  --     'English',
  --     'Library',
  --     'books-from-the-library',
  --     '2018-08-28',
  --     17
  --   ),
  --   (
  --     'Plant Science: An Introduction to Botany',
  --     300,
  --     'Audio',
  --     'N',
  --     'B',
  --     'English',
  --     'English',
  --     'Home',
  --     'audible',
  --     '2018-12-05',
  --     18
  --   ),
  --   (
  --     '"Death of a Red Heroine (Inspector Chen Cao #1)"',
  --     512,
  --     'Paper',
  --     'F',
  --     'B',
  --     'English',
  --     'English',
  --     'Home',
  --     'fiction-adult-2000-2014',
  --     '2000-01-01',
  --     19);
  -- ('', '', '', , , '', '', '', '', '', '', '', , , , "");
SELECT
  *
FROM
  book;
SELECT
  *
FROM
  author;
-- ALTER TABLE
  --   author
  -- ADD
  --   book_id INT;
  -- ALTER TABLE
  --   author
  -- ADD
  --   FOREIGN KEY (book_id) REFERENCES book(book_id) ON DELETE
  -- SET
  --   NULL;
  -- ALTER TABLE
  --   book DROP if_read;
  -- ALTER TABLE
  --   book
  -- ADD
  --   imprint_id INT;
  -- UPDATE
  --   book
  -- SET
  --   publisher_id = 14,
  --   imprint_id = NULL
  -- WHERE
  --   book_id = 19;
SELECT
  *
FROM
  book;
-------------------------------------------------------CREATE PUBLISHER----------------------------------------------------------
  -- CREATE TABLE publisher(
  --   publisher_id INT PRIMARY KEY AUTO_INCREMENT,
  --   publisher_name VARCHAR(50),
  --   imprint_name VARCHAR(50),
  --   city VARCHAR(30),
  --   country VARCHAR(30),
  --   author_id INT,
  --   book_id INT
  -- );
  -- INSERT INTO
  --   publisher (
  --     publisher_name,
  --     imprint_name,
  --     city,
  --     country,
  --     author_id,
  --     book_id
  --   )
  -- VALUES
  --   (
  --     'Penguin Random House Canada',
  --     'Allen Lane',
  --     'Toronto',
  --     'Canada',
  --     1,
  --     1
  --   ),
  --   (
  --     'The Great Courses',
  --     'NULL',
  --     'Chantilly',
  --     'US',
  --     1,
  --     1
  --   ),
  --   ('Beacon Press', 'NULL', 'Boston', 'US', 1, 1);
  -- ALTER TABLE
  --   publisher DROP book_id;
  -- INSERT INTO
  --   publisher (
  --     publisher_name,
  --     city,
  --     country
  --   )
  -- VALUES
  --   ('North Atlantic Books', 'Berkeley', 'US'),
  --   ('Hachette', 'New York', 'US'),
  --   ('Greystone Books', 'Vancouver', 'Canada'),
  --   ('Simon & Schuster Canada', 'Toronto', 'Canada'),
  --   ('Bloomsbury Publishing', 'London', 'UK'),
  --   ('Arsenal Pulp Press', 'Vancouver', 'Canada'),
  --   (
  --     'University of Minnesota Press',
  --     'Minneapolis',
  --     'US'
  --   ),
  --   ('Minotaur Books', 'New York', 'US'),
  --   ('Farrar, Straus and Giroux', 'New York', 'US'),
  --   ('Soho Crime', 'New York', 'US');
  -- CREATE TABLE imprint(
  --     imprint_id INT PRIMARY KEY AUTO_INCREMENT,
  --     imprint_name VARCHAR(50),
  --     publisher_id INT
  --   );
  -- INSERT INTO
  --   imprint (imprint_name, publisher_id)
  -- VALUES
  --   ('Allen Lane', 1),
  --   ('Hamish Hamilton', 1),
  --   ('Hodder & Stoughton', 6),
  --   ('Atria Books', 8),
  --   ('HarperOne', 4),
  --   ('Penguin Press', 1);
SELECT
  *
FROM
  publisher;
SELECT
  *
FROM
  publisher;
-------------------------------------------CREATE READ TABLE------------------------------------------------------------
  -- CREATE TABLE readbook(
  --   read_id INT PRIMARY KEY AUTO_INCREMENT,
  --   if_read TINYINT(2),
  --   started DATE,
  --   finished DATE,
  --   rating TINYINT(2),
  --   review VARCHAR(1000),
  --   book_id INT
  -- );
INSERT INTO
  readbook (
    if_read,
    started,
    finished,
    rating,
    review,
    book_id
  )
VALUES
  (1, "2022-01-30", "2022-01-30", 4, NULL, 2);
SELECT
  *
FROM
  readbook;
--------------------------------------------------------CREATE TRANSLATOR----------------------------------------------------------
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
INSERT INTO
  translator (
    first_name,
    last_name,
    birth_country,
    current_country,
    country_details,
    book_id,
    publisher_id
  )
VALUES
  ('', '', '', '', NULL,,),
  ('', '', '', '', NULL,,),
  ('', '', '', '', NULL,,);
-- ('', '', '', '', '', , ),
  -- ('', '', '', '', '', , ),
SELECT
  *
FROM
  translator;
-- ALTER TABLE
  --   readbook
  -- ADD
  --   FOREIGN KEY (book_id) REFERENCES book(book_id) ON DELETE
  -- SET
  --   NULL;
  -------------------------------------------------------CHECK WORK----------------------------------------------------------
SELECT
  *
FROM
  author;
SELECT
  *
FROM
  book;
SELECT
  *
FROM
  publisher;
SELECT
  *
FROM
  translator;
-------------------------------------------------------QUERIES----------------------------------------------------------
SELECT
  *
FROM
  author
ORDER BY
  last_name,
  first_name
LIMIT
  10;
SELECT
  last_name AS "Surname"
FROM
  author;
SELECT
  DISTINCT last_name,
  first_name
FROM
  author
ORDER BY
  last_name;
SELECT
  COUNT(author_id)
FROM
  author;
SELECT
  *
FROM
  author
WHERE
  birth_country = "US";
SELECT
  *
FROM
  author
WHERE
  country_details IS NOT NULL
  AND birth_country = "Canada";
SELECT
  gender,
  SUM(bipoc),
  SUM(lgbtq),
  SUM(disabled)
FROM
  author
GROUP BY
  gender;
SELECT
  gender,
  COUNT(gender)
FROM
  author
WHERE
  gender = "F";
SELECT
  *
FROM
  author
WHERE
  last_name LIKE "%m%";
SELECT
  *
FROM
  author
WHERE
  last_name LIKE "T%";
SELECT
  *
FROM
  author
WHERE
  last_name LIKE "%W%";
SELECT
  *
FROM
  author
WHERE
  birth_country LIKE "U%";
SELECT
  *
FROM
  readbook
WHERE
  started > "2022-01-01";
SELECT
  *
FROM
  readbook
WHERE
  started LIKE "____-01%";
---------------------------------QUERIES WITH UNIONS & JOINS--------------------------------------
  ---Note: Unions must have same number of columns and similar datatypes
SELECT
  last_name as "Name"
FROM
  author
UNION
SELECT
  book_title
FROM
  book
UNION
SELECT
  publisher_name
FROM
  publisher;
SELECT
  book_title AS "Title",
  author.first_name AS "First Name",
  author.last_name AS "Last Name",
  publisher.publisher_name AS "Publisher"
FROM
  book
  JOIN publisher ON book.publisher_id = publisher.publisher_id
  JOIN author ON book.author_id = author.author_id;
SELECT
  book_title AS "Title",
  publisher.publisher_name AS "Publisher"
FROM
  book
  RIGHT JOIN publisher ON book.publisher_id = publisher.publisher_id;
SELECT
  publisher_name AS "Publisher"
FROM
  publisher
ORDER BY
  publisher_name;
SELECT
  book.book_title AS "Title",
  CONCAT(author.first_name, " ", author.last_name) AS "Author",
  finished AS "Date Read",
  rating AS "Rating"
FROM
  readbook
  JOIN book ON readbook.book_id = book.book_id
  JOIN author ON book.author_id = author.author_id
WHERE
  finished > "2022-01-01";
