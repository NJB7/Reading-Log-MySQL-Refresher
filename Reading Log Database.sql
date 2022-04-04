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
  imprint;
SELECT
  *
FROM
  translator;
SELECT
  *
FROM
  readbook;
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
INSERT INTO
  author (
    first_name,
    last_name,
    birth_country,
    current_country,
    country_details,
    gender,
    bipoc,
    lgbtq,
    disabled,
    author_details
  )
VALUES
  (
    'Michel',
    'de Montaigne',
    'France',
    'France',
    NULL,
    "M",
    0,
    0,
    0,
    NULL
  );
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
INSERT INTO
  book (
    book_title,
    pages,
    book_format,
    fiction_non_fiction,
    frontlist_backlist,
    original_language,
    language_read,
    my_source,
    bookshelf,
    pub_date,
    author_id,
    publisher_id,
    imprint_id,
    translator_id
  )
VALUES
  (
    'Essais',
    335,
    'Paper',
    'N',
    'B',
    'French',
    'French',
    'Home',
    'french-nonfiction',
    '1595-01-01',
    20,
    16,
    8,
    NULL
  );
SELECT
  *
FROM
  book;
SELECT
  *
FROM
  publisher;
-- SHOW CREATE TABLE author;
  -- ALTER TABLE
  --     author
  --   ADD
  --     book_id INT;
  -- ALTER TABLE
  --   author
  -- ADD
  --   FOREIGN KEY (book_id) REFERENCES book(book_id) ON DELETE
  -- SET
  --   NULL;
  -- ALTER TABLE
  --   author DROP FOREIGN KEY author_ibfk_2;
  -- ALTER TABLE
  --   author DROP book_id;
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
UPDATE
  book
SET
  author_id = 21
WHERE
  book_id = 21;
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
INSERT INTO
  publisher (
    publisher_name,
    city,
    country
  )
VALUES
  ('Éditions Larousse', 'Paris', 'France');
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
INSERT INTO
  imprint (imprint_name, publisher_id)
VALUES
  ('Larousse Kingfisher Chambers', 16);
SELECT
  *
FROM
  publisher;
SELECT
  *
FROM
  imprint;
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
    book_id
  )
VALUES
  (0, "2022-03-23", NULL, NULL, 21);
SELECT
  *
FROM
  book;
--   (1, "2022-02-03", "2022-02-05", 3, NULL, 4),
  --   (1, "2022-02-05", "2022-02-06", 4, NULL, 5),
  --   (1, "2022-02-03", "2022-02-10", 4, NULL, 6),
  --   (1, "2022-02-11", "2022-02-15", 4, NULL, 7),
  --   (1, "2022-01-02", "2022-02-19", 3, NULL, 8),
  --   (1, "2022-02-10", "2022-02-28", 4, NULL, 9),
  --   (1, "2022-02-23", "2022-02-25", 5, NULL, 10),
  --   (1, "2020-11-04", "2022-02-26", 4, NULL, 11),
  --   (1, "2021-12-17", "2022-02-26", 5, NULL, 12),
  --   (1, "2021-12-23", "2022-02-27", 5, NULL, 13),
  --   (1, "2021-11-27", "2022-02-28", 4, NULL, 14),
  --   (1, "2021-12-30", "2022-03-05", 5, NULL, 15),
  --   (1, "2022-02-27", "2022-03-12", 4, NULL, 16),
  --   (1, "2022-03-12", "2022-03-14", 4, NULL, 17),
  --   (1, "2022-02-27", "2022-03-19", 5, NULL, 18),
  --   (1, "2021-12-21", "2022-03-21", 4, NULL, 19);
  -- SELECT
  --   *
  -- FROM
  --   readbook;
  --   ALTER TABLE readbook DROP review;
  -- --------------------------------------------------------CREATE TRANSLATOR----------------------------------------------------------
  -- CREATE TABLE translator(
  --   translator_id INT PRIMARY KEY AUTO_INCREMENT,
  --   first_name VARCHAR(50),
  --   last_name VARCHAR(50),
  --   birth_country VARCHAR(30),
  --   current_country VARCHAR(30),
  --   country_details VARCHAR(50)
  -- );
  -- INSERT INTO
  --   translator (first_name, last_name)
  -- VALUES
  --   ('Victoria', 'Cribb');
  -- ALTER TABLE
  --   book
  -- ADD
  --   FOREIGN KEY (translator_id) REFERENCES translator(translator_id) ON DELETE SET NULL;
  -- UPDATE
  --   book
  -- SET
  --   translator_id = 1
  -- WHERE
  --   book_id = 7;
SELECT
  *
FROM
  book
WHERE
  original_language != "English";
SELECT
  *
FROM
  translator;
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
  # first 10 authors by last name
SELECT
  *
FROM
  author
ORDER BY
  last_name,
  first_name
LIMIT
  10;
# Total alphabetized list of distinct last names of authors
SELECT
  DISTINCT last_name,
  first_name
FROM
  author ## Total number of authors
ORDER BY
  last_name;
## Total number of authors
SELECT
  COUNT(author_id)
FROM
  author;
## All American authors
SELECT
  *
FROM
  author
WHERE
  birth_country = "US";
## Canadian authors with country details (e.g. Indigenous)
SELECT
  *
FROM
  author
WHERE
  country_details IS NOT NULL
  AND birth_country = "Canada";
## Number of BIPOC, LGBTQ, Disabled authors, by Gender
SELECT
  gender,
  SUM(bipoc),
  SUM(lgbtq),
  SUM(disabled)
FROM
  author
GROUP BY
  gender;
## Number of female authors
SELECT
  gender,
  COUNT(gender)
FROM
  author
WHERE
  gender = "F";
## All authors with last name starting with "T"
SELECT
  *
FROM
  author
WHERE
  last_name LIKE "T%";
## All authors with last name containing "W"
SELECT
  *
FROM
  author
WHERE
  last_name LIKE "%W%";
## All authors with birth country beginning with "U"
SELECT
  *
FROM
  author
WHERE
  birth_country LIKE "U%";
##All books started from 2022 on
SELECT
  *
FROM
  readbook
WHERE
  started > "2022-01-01";
#All books read in January of any year
SELECT
  *
FROM
  readbook
WHERE
  started LIKE "____-01%";
---------------------------------QUERIES WITH UNIONS & JOINS--------------------------------------
  ---Note: Unions must have same number of columns and similar datatypes
  ## List of all author last names, bookt titles, publishers
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
## All books with their author first and last name, publisher
SELECT
  book_title AS "Title",
  author.first_name AS "First Name",
  author.last_name AS "Last Name",
  publisher.publisher_name AS "Publisher"
FROM
  book
  JOIN publisher ON book.publisher_id = publisher.publisher_id
  JOIN author ON book.author_id = author.author_id;
## All books with their publishers
SELECT
  book_title AS "Title",
  publisher.publisher_name AS "Publisher"
FROM
  book
  RIGHT JOIN publisher ON book.publisher_id = publisher.publisher_id;
## Alphabetize complete list of publishers
SELECT
  publisher_name AS "Publisher"
FROM
  publisher
ORDER BY
  publisher_name;
## Books read in March (run in March) 2022
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
  finished > "2022-03-01";
## List of unread books, not including currently reading
SELECT
  book.book_title AS "Title",
  CONCAT(author.first_name, " ", author.last_name) AS "Author",
  started AS "Started Reading"
FROM
  readbook
  JOIN book ON readbook.book_id = book.book_id
  JOIN author ON book.author_id = author.author_id
WHERE
  if_read = 0
  AND started IS NULL;
## List of currently reading books
SELECT
  book.book_title AS "Title",
  CONCAT(author.first_name, " ", author.last_name) AS "Author",
  started AS "Started Reading"
FROM
  readbook
  JOIN book ON readbook.book_id = book.book_id
  JOIN author ON book.author_id = author.author_id
WHERE
  if_read = 0
  AND started IS NOT NULL;
--------------------------------------------------NESTED QUERIES--------------------------------------------------------------
  ## All books by those publishers with at least 1 book >300 pages
SELECT
  book.book_title,
  book.pages,
  publisher.publisher_name
FROM
  publisher
  JOIN book ON book.publisher_id = publisher.publisher_id
WHERE
  book.publisher_id IN (
    SELECT
      book.publisher_id
    FROM
      book
    WHERE
      book.pages > 300
  );
# All books with more than 300 pages published and display publishers -
SELECT
  book.book_title,
  book.pages,
  publisher.publisher_name
FROM
  publisher
  JOIN book ON book.publisher_id = publisher.publisher_id
WHERE
  book.pages > 300;
# Authors who have books published by companies in Toronto, along with some of their author_details
  # Can use = instead of IN and limit to 1 if the result will only be one person
SELECT
  author.first_name,
  author.last_name,
  author.gender,
  author.bipoc
FROM
  publisher
  JOIN book ON book.publisher_id = publisher.publisher_id
  JOIN author ON book.author_id = author.author_id
WHERE
  publisher.publisher_id IN (
    SELECT
      publisher.publisher_id
    FROM
      publisher
    WHERE
      publisher.city = "Toronto"
  );
# publishers by number of books published
SELECT
  publisher.publisher_name,
  COUNT(book_id) AS "# of books published"
FROM
  publisher
  JOIN book ON book.publisher_id = publisher.publisher_id
WHERE
  publisher.country = "Canada"
GROUP BY
  publisher.publisher_name;
#Display the publishing companies in Canada order of who publishes the most books
SELECT
  publisher.publisher_name,
  COUNT(book_id) AS "# of books published"
FROM
  publisher
  JOIN book ON book.publisher_id = publisher.publisher_id
WHERE
  publisher.country = "Canada"
GROUP BY
  publisher.publisher_name
LIMIT
  1;
------------------------------------------------------Temp Tables-----------------------------------------------------
  ## List of currently reading books - table could be used by others with access and will need to be manually deleted
  CREATE TABLE curently_reading(
    SELECT
      book.book_title AS "Title",
      CONCAT(author.first_name, " ", author.last_name) AS "Author",
      started AS "Started Reading"
    FROM
      readbook
      JOIN book ON readbook.book_id = book.book_id
      JOIN author ON book.author_id = author.author_id
    WHERE
      if_read = 0
      AND started IS NOT NULL
  );
SELECT
  *
FROM
  curently_reading;
# Books read in 2022 (run in April) & ratings - temp table that I can run queries ON
  # the second select after the closed bracked is the query on the temp table
  WITH read_this_year AS(
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
      finished > "2022-01-01"
  )
SELECT
  *
FROM
  read_this_year;
# Alternate temp table method - read this year with ratings (same as above)
  # Will disappear when the session is closed
  CREATE TEMPORARY TABLE read_this_year AS(
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
      finished > "2022-01-01"
  );
SELECT
  *
FROM
  read_this_year;
