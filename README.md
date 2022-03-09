# Reading-Log-MySQL-Refresher
Just a collection of books I've read this year (and maybe past years) to refresh my memory about MySQL

Database is called reading_log (was called mena_lit)

Reading Log Database & MySQL Notes
---------------------------------

author_id seems to be NOT NULL automatically

--comment in SQL

TO DELETE: DROP TABLE student;
TO MODIFY: ALTER TABLE student ADD/DROP column_name

ALTER TABLE author MODIFY author_id AUTO_INCREMENT -- this doesn't work

INSERT INTO author VALUES();
INSERT INTO author (first_name, last_name) VALUES('Clayton', 'Thomas-Muller');
INSERT INTO author 
(first_name, last_name, birth_country, current_country, country_details,
gender, bipoc, lgbtq, disabled, author_details) 
VALUES
('Clayton', 'Thomas-Muller', 'Canada', 'Canada', 'Cree', "M", 1,0,0,NULL);

SELECT * 
FROM author;

UPDATE author
SET birth_country = 'Can'
WHERE birth_country = 'Canada';

UPDATE author
SET birth_country = 'Canada, current_country = 'Canada'
WHERE author_id = 1 OR author_id = 2;

DELETE FROM author; (would delete all rows)
DELETE FROM author
WHERE birth_country = 'Canada' OR birth_country = 'US';

SELECT first_name, last_name
FROM author
ORDER BY last_name
/
SELECT author.first_name, author.last_name
ORDER BY author.last_name / ORDER BY author.last_name DESC
WHERE condition (can use <=, <> is 'not equal to'
LIMIT #

SELECT * 
FROM author
WHERE first_name IN ('Clayton', 'Dina');
--didn't like when I still had the sort rows in above, 
--even though I tried to only run this query.

---------------------------------------

LOAD DATA INFILE 'c:\Users\nicol\Dropbox\Programming\MySQL\ReadingLogforSQLauthors.csv'
INTO TABLE author
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 4 rows;

INTO TABLE author (first_name, last_name, birth_country, current_country, country_details,


----------------------------------------
