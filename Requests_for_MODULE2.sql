

practice=# CREATE TABLE users(
practice(# id serial PRIMARY KEY,
practice(# name varchar not null,
practice(# pwd varchar not null,
practice(# email varchar not null,
practice(# gender varchar(1) not null);
CREATE TABLE


practice=# INSERT INTO users(name, pwd, email, gender) VALUES ('Vasya', '21341234qwfsdf', 'mmm@mmail.com', 'm');
INSERT 0 1
practice=# INSERT INTO users(name, pwd, email, gender) VALUES ('Alex', '21341234', 'mmm@gmail.com', 'm');
INSERT 0 1
practice=# INSERT INTO users(name, pwd, email, gender) VALUES ('Alexey', 'qq21341234Q', 'alexey@gmail.com', 'm');
INSERT 0 1
practice=# INSERT INTO users(name, pwd, email, gender) VALUES ('Helen', 'MarryMeeee', 'hell@gmail.com', 'f');
INSERT 0 1
practice=# INSERT INTO users(name, pwd, email, gender) VALUES ('Jenny', 'SmakeMyb', 'eachup@gmail.com', 'f');
INSERT 0 1
practice=# INSERT INTO users(name, pwd, email, gender) VALUES ('Lora', 'burn23', 'tpicks@gmail.com', 'f');
INSERT 0 1



# TASK 1

practice=# select * from users;
 id |  name  |      pwd       |      email       | gender
----+--------+----------------+------------------+--------
  1 | Vasya  | 21341234qwfsdf | mmm@mmail.com    | m
  2 | Alex   | 21341234       | mmm@gmail.com    | m
  3 | Alexey | qq21341234Q    | alexey@gmail.com | m
  4 | Helen  | MarryMeeee     | hell@gmail.com   | f
  5 | Jenny  | SmakeMyb       | eachup@gmail.com | f
  6 | Lora   | burn23         | tpicks@gmail.com | f
(6 rows)

# TASK 2

practice=# select concat('This is ', name, ', ', case gender when 'm' then 'he' else 'she' end, ' has email ', email) "Info" from users;
                     Info
-----------------------------------------------
 This is Vasya, he has email mmm@mmail.com
 This is Alex, he has email mmm@gmail.com
 This is Alexey, he has email alexey@gmail.com
 This is Helen, she has email hell@gmail.com
 This is Jenny, she has email eachup@gmail.com
 This is Lora, she has email tpicks@gmail.com



practice=# select concat('This is ' || name || ', '|| case gender when 'm' then 'he' else 'she' end|| ' has email ' || email) "Info" from users;
                     Info
-----------------------------------------------
 This is Vasya, he has email mmm@mmail.com
 This is Alex, he has email mmm@gmail.com
 This is Alexey, he has email alexey@gmail.com
 This is Helen, she has email hell@gmail.com
 This is Jenny, she has email eachup@gmail.com
 This is Lora, she has email tpicks@gmail.com
(6 rows)



# TASK 3


practice=# select concat('We have ', COUNT(case when gender = 'm' then 1 end), ' boys!') "Gender Information:" from users
practice-# UNION
practice-# select concat('We have ', COUNT(case when gender = 'f' then 1 end), ' girls!') "Gender Information:" from users
practice-# ;
 Gender Information:
---------------------
 We have 3 boys!
 We have 3 girls!
(2 rows) 



# TASK 4


practice=# create table word (id serial, word varchar(255), vocabulary_id integer);
CREATE TABLE
practice=#
practice=# create table vocabulary (id serial, name varchar(255), info text);
CREATE TABLE
practice=# INSERT INTO vocabulary
practice-# (name)
practice-# VALUES
practice-# ('animals'),
practice-# ('school'),
practice-# ('nature'),
practice-# ('human'),
practice-# ('SF');
INSERT 0 5
practice=#
practice=# INSERT INTO word
practice-# (word, vocabulary_id)
practice-# VALUES
practice-# ('turtle', 1),
practice-# ('pig', 1),
practice-# ('dog', 1),
practice-# ('cat', 1),
practice-# ('lizard', 1),
practice-# ('cow', 1),
practice-# ('rabbit', 1),
practice-# ('frog', 1),
practice-# ('headgehog', 1),
practice-# ('goat', 1);
INSERT 0 10
practice=#
practice=# INSERT INTO word
practice-# (word, vocabulary_id)
practice-# VALUES
practice-# ('desk', 2),
practice-# ('book', 2),
practice-# ('chalk', 2),
practice-# ('pen', 2),
practice-# ('pencil', 2),
practice-# ('copybook', 2),
practice-# ('lesson', 2),
practice-# ('teacher', 2),
practice-# ('pupils', 2),
practice-# ('school', 2);
INSERT 0 10
practice=#
practice=# INSERT INTO word
practice-# (word, vocabulary_id)
practice-# VALUES
practice-# ('ray', 3),
practice-# ('thunder', 3),
practice-# ('sun', 3),
practice-# ('field', 3),
practice-# ('hill', 3),
practice-# ('mountain', 3),
practice-# ('river', 3),
practice-# ('forest', 3),
practice-# ('grass', 3),
practice-# ('rain', 3);
INSERT 0 10
practice=#
practice=# INSERT INTO word
practice-# (word, vocabulary_id)
practice-# VALUES
practice-# ('hair', 4),
practice-# ('nail', 4),
practice-# ('finger', 4),
practice-# ('eye', 4),
practice-# ('tooth', 4),
practice-# ('knee', 4),
practice-# ('elbow', 4),
practice-# ('leg', 4),
practice-# ('arm', 4),
practice-# ('head', 4);
INSERT 0 10
practice=#
practice=# INSERT INTO word
practice-# (word, vocabulary_id)
practice-# VALUES
practice-# ('engine', 5),
practice-# ('steel', 5),
practice-# ('power', 5),
practice-# ('nuclear', 5),
practice-# ('shotgun', 5),
practice-# ('laser', 5),
practice-# ('flight', 5),
practice-# ('energy', 5),
practice-# ('Moon', 5),
practice-# ('splace', 5);
INSERT 0 10


practice=# select * from word;
 id |   word    | vocabulary_id
----+-----------+---------------
  1 | turtle    |             1
  2 | pig       |             1
  3 | dog       |             1
  4 | cat       |             1
  5 | lizard    |             1
  6 | cow       |             1
  7 | rabbit    |             1
  8 | frog      |             1
  9 | headgehog |             1
 10 | goat      |             1
 11 | desk      |             2
 12 | book      |             2
 13 | chalk     |             2
 14 | pen       |             2
 15 | pencil    |             2
 16 | copybook  |             2
 17 | lesson    |             2
 18 | teacher   |             2
 19 | pupils    |             2
 20 | school    |             2
 21 | ray       |             3
 22 | thunder   |             3
 23 | sun       |             3
 24 | field     |             3
 25 | hill      |             3
 26 | mountain  |             3
 27 | river     |             3
 28 | forest    |             3
 29 | grass     |             3
 30 | rain      |             3
 31 | hair      |             4
 32 | nail      |             4
 33 | finger    |             4
 34 | eye       |             4
 35 | tooth     |             4
 36 | knee      |             4
 37 | elbow     |             4
 38 | leg       |             4
 39 | arm       |             4
 40 | head      |             4
 41 | engine    |             5
 42 | steel     |             5
 43 | power     |             5
 44 | nuclear   |             5
 45 | shotgun   |             5
 46 | laser     |             5
 47 | flight    |             5
 48 | energy    |             5
 49 | Moon      |             5
 50 | splace    |             5
(50 rows)


practice=# select * from vocabulary;
 id |  name   | info
----+---------+------
  1 | animals |
  2 | school  |
  3 | nature  |
  4 | human   |
  5 | SF      |
(5 rows)



# TASK 5


practice=# select vocabulary.name, COUNT(word.id) words from vocabulary JOIN word ON vocabulary.id=word.vocabulary_id
practice-# GROUP BY vocabulary.name;
  name   | words
---------+-------
 animals |    10
 school  |    10
 SF      |    10
 human   |    10
 nature  |    10
(5 rows)
