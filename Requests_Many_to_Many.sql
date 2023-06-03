# Many-to-many relationship

practice=# CREATE TABLE posts(
practice(# id serial PRIMARY KEY,
practice(# post_title varchar(150) NOT NULL,
practice(# post_text varchar NOT NULL);
CREATE TABLE


practice=# CREATE TABLE tags(
practice(# id serial PRIMARY KEY,
practice(# tag_name varchar(50) NOT NULL);
CREATE TABLE


practice=# CREATE TABLE posts_tags(
practice(# post_id int REFERENCES posts(id),
practice(# tag_id int REFERENCES tags(id),
practice(# CONSTRAINT posts_tags_pk PRIMARY KEY (post_id, tag_id));
CREATE TABLE


practice=# INSERT INTO posts (post_title, post_text) VALUES ('post1', 'text post1');
INSERT 0 1
practice=# INSERT INTO posts (post_title, post_text) VALUES ('post2', 'text post2');
INSERT 0 1
practice=# INSERT INTO posts (post_title, post_text) VALUES ('post3', 'text post3');
INSERT 0 1
practice=# INSERT INTO tags (tag_name) VALUES ('Python');
INSERT 0 1
practice=# INSERT INTO tags (tag_name) VALUES ('JavaScript');
INSERT 0 1
practice=# INSERT INTO tags (tag_name) VALUES ('MySQL');
INSERT 0 1
practice=# INSERT INTO tags (tag_name) VALUES ('PostgreSQL');
INSERT 0 1
practice=# INSERT INTO tags (tag_name) VALUES ('Django');
INSERT 0 1
practice=# INSERT INTO posts_tags VALUES (1, 1), (2, 2), (2, 3), (3, 1), (3, 4), (3,5);
INSERT 0 6


practice=# SELECT * FROM posts;
 id | post_title | post_text
----+------------+------------
  1 | post1      | text post1
  2 | post2      | text post2
  3 | post3      | text post3
(3 rows)



practice=# SELECT * FROM tags;
 id |  tag_name
----+------------
  1 | Python
  2 | JavaScript
  3 | MySQL
  4 | PostgreSQL
  5 | Django
(5 rows)



practice=# SELECT * FROM posts_tags;
 post_id | tag_id
---------+--------
       1 |      1
       2 |      2
       2 |      3
       3 |      1
       3 |      4
       3 |      5
(6 rows)



practice=# SELECT posts.id, posts.post_title, tags.tag_name FROM posts LEFT JOIN posts_tags ON posts_tags.post_id=posts.id LEFT JOIN tags ON posts_tags.tag_id=tags.id;
 id | post_title |  tag_name
----+------------+------------
  1 | post1      | Python
  2 | post2      | JavaScript
  2 | post2      | MySQL
  3 | post3      | Python
  3 | post3      | PostgreSQL
  3 | post3      | Django
(6 rows)