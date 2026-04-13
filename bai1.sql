CREATE SCHEMA library;
CREATE TABLE IF NOT EXISTS library.Bools(
	book_id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	author VARCHAR(50) NOT NULL,
	published_year INT,
	price double PRECISION
); 
-- câu a
SELECT datname FROM pg_database;
--câu b
SELECT schema_name FROM information_schema.schemata;
--câu c
SELECT* FROM library.Bools;





