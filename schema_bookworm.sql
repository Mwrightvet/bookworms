DROP TABLE IF EXISTS books CASCADE; 
DROP TABLE IF EXISTS ratings CASCADE; 
DROP TABLE IF EXISTS books_ratings CASCADE; 


CREATE TABLE "books" (
    "isbn" VARCHAR(255),
	"book_title" TEXT,
	"book_author" TEXT 
  );

CREATE TABLE "ratings" (
    "user_id" VARCHAR(255)   NOT NULL,
    "isbn" VARCHAR(255)   NOT NULL,
	"book_rating" INT 
);

CREATE TABLE "books_ratings" (
	"user_id" VARCHAR(255)   NOT NULL,
    "isbn" VARCHAR(255)   NOT NULL,
	"book_rating" INT,  
	"book_title" TEXT,
	"book_author" TEXT 
);

SELECT * FROM books
SELECT * FROM books_ratings
SELECT * FROM ratings 
	WHERE "isbn" = '034545104X';