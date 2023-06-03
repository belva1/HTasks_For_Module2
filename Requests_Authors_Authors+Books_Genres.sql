

literature=# create table genres(
literature(# id SERIAL PRIMARY KEY,
literature(# genre VARCHAR(100) NOT NULL);
CREATE TABLE


literature=# create table books(
literature(# id SERIAL PRIMARY KEY,
literature(# title VARCHAR(200) NOT NULL,
literature(# fk_genre int REFERENCES genres(id));

literature=# INSERT INTO genres (genre) VALUES
literature-# ('SF'),
literature-# ('novel'),
literature-# ('story'),
literature-# ('horror');
INSERT 0 4

literature=# INSERT INTO books (title, fk_genre) VALUES
literature-# ('Master and Margarita', 2),
literature-# ('White Fang', 3),
literature-# ('Duna', 1),
literature-# ('Smile', 4);
INSERT 0 4

literature=# ALTER TABLE books rename to books_with_genre_id;
ALTER TABLE


literature=# select * from books_with_genre_id;
 id |        title         | fk_genre
----+----------------------+----------
  1 | Master and Margarita |        2
  2 | White Fang           |        3
  3 | Duna                 |        1
  4 | Smile                |        4
(4 rows)

literature=# select books_with_genre_id.title, genres.genre FROM books_with_genre_id, genres WHERE books_with_genre_id.fk_genre=genres.id;
        title         | genre
----------------------+--------
 Master and Margarita | novel
 White Fang           | story
 Duna                 | SF
 Smile                | horror
(4 rows)



literature=# CREATE TABLE authors (
literature(# id SERIAL PRIMARY KEY,
literature(# name VARCHAR(200) NOT NULL,
literature(# year DATE NOT NULL DEFAULT '1970-01-01'
literature(# );
CREATE TABLE


literature=# create table authors_books(
literature(# fk_author_id int not null REFERENCES authors(id), fk_book_id int not null REFERENCES books_with_genre_id(id));
CREATE TABLE

literature=# INSERT INTO authors (name) VALUES
literature-# ('Frank Herbert'),
literature-# ('Mykhailo Bulgakov'),
literature-# ('Jack London'),
literature-# ('Johann Goethe'),
literature-# ('Robert Heinlein');
INSERT 0 5


literature=# INSERT INTO authors_books (fk_author_id, fk_book_id) VALUES
literature-# (1, 4),
literature-# (2, 1),
literature-# (3, 3),
literature-# (4, 2);
INSERT 0 4


literature=# select * from authors_books;
 fk_author_id | fk_book_id
--------------+------------
            1 |          4
            2 |          1
            3 |          3
            4 |          2
(4 rows)


literature=# select authors.name, authors_books.fk_author_id FROM authors, authors_books WHERE authors.id=authors_books.fk_author_id;
       name        | fk_author_id
-------------------+--------------
 Frank Herbert     |            1
 Mykhailo Bulgakov |            2
 Jack London       |            3
 Johann Goethe     |            4
(4 rows)


literature=# select authors_books.fk_author_id, authors.name FROM authors, authors_books WHERE authors.id=authors_books.fk_author_id;
 fk_author_id |       name
--------------+-------------------
            1 | Frank Herbert
            2 | Mykhailo Bulgakov
            3 | Jack London
            4 | Johann Goethe
(4 rows)


literature=# select authors_books.fk_book_id, books_with_genre_id.title FROM authors_books, books_with_genre_id WHERE authors_books.fk_book_id=books_with_genre_id.id;
 fk_book_id |        title
------------+----------------------
          4 | Smile
          1 | Master and Margarita
          3 | Duna
          2 | White Fang
(4 rows)



literature=# drop table authors_books;
DROP TABLE
literature=# drop table authors;
DROP TABLE


literature=# create table authors(
literature(# id serial PRIMARY KEY,
literature(# name VARCHAR(200) NOT NULL DEFAULT 'lore');
CREATE TABLE


literature=# create table authors_books(
literature(# author_id int REFERENCES authors(id),
literature(# book_id int REFERENCES books_with_genre_id(id),
literature(# CONSTRAINT authors_books_pk PRIMARY KEY (author_id, book_id));
CREATE TABLE


literature=# INSERT INTO authors (name) values ('Frank Herbert');
INSERT 0 1
literature=# INSERT INTO authors (name) values ('Mykhailo Bulgakov'), ('Jack London'), ('Johann Goethe'), ('Robert Heinlein');
INSERT 0 4


literature=# INSERT INTO authors_books VALUES
literature-# (1, 4),
literature-# (2, 1),
literature-# (3, 3),
literature-# (4, 2);
INSERT 0 4


literature=# SELECT authors.id, authors.name, books_with_genre_id.title FROM authors LEFT JOIN authors_books ON authors_books.author_id=authors.id LEFT JOIN books_with_genre_id ON authors_books.book_id=books_with_genre_id.id;
 id |       name        |        title
----+-------------------+----------------------
  1 | Frank Herbert     | Smile
  2 | Mykhailo Bulgakov | Master and Margarita
  3 | Jack London       | Duna
  4 | Johann Goethe     | White Fang
  5 | Robert Heinlein   |
(5 rows)



literature=# DELETE FROM authors WHERE id=5;
DELETE 1
literature=# select * from authors;
 id |       name
----+-------------------
  1 | Frank Herbert
  2 | Mykhailo Bulgakov
  3 | Jack London
  4 | Johann Goethe
(4 rows)



literature=# SELECT authors.id, authors.name, books_with_genre_id.title, genres.genre FROM authors LEFT JOIN authors_books ON authors_books.author_id=authors.id LEFT JOIN books_with_genre_id ON authors_books.book_id=books_with_genre_id.id LEFT JOIN genres ON books_with_genre_id.fk_genre=genres.id;
 id |       name        |        title         | genre
----+-------------------+----------------------+--------
  1 | Frank Herbert     | Smile                | horror
  2 | Mykhailo Bulgakov | Master and Margarita | novel
  3 | Jack London       | Duna                 | SF
  4 | Johann Goethe     | White Fang           | story
(4 rows)
