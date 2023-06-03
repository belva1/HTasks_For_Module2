
# Queries when creating, entering data, linking two table.


practice=# create table users(
practice(# id serial primary key,
practice(# first_name varchar(30) NOT NULL,
practice(# last_name varchar(30) NOT NULL);
CREATE TABLE
practice=# create table passports(
practice(# id serial primary key,
practice(# passport_number int NOT NULL,
practice(# city_of_registration varchar(30) NOT NULL,
practice(# fk_passports_users int REFERENCES users(id));
CREATE TABLE
practice=# INSERT INTO users (first_name, last_name) values ('Amy', 'Smith');
INSERT 0 1
practice=# INSERT INTO users (first_name, last_name) values ('Brad', 'Nauman');
INSERT 0 1
practice=# INSERT INTO users (first_name, last_name) values ('Alice', 'Wanderburg');
INSERT 0 1
practice=# INSERT INTO users (first_name, last_name) values ('Jey', 'Stone');
INSERT 0 1
practice=# INSERT INTO users (first_name, last_name) values ('Gon', 'Gitlin');
INSERT 0 1

practice=# INSERT INTO passports (passport_number, city_of_registration, fk_passports_users) values (1111, 'Mexico', 1);
INSERT 0 1
practice=# INSERT INTO passports (passport_number, city_of_registration, fk_passports_users) values (2222, 'Mexico', 2);
INSERT 0 1
practice=# INSERT INTO passports (passport_number, city_of_registration, fk_passports_users) values (3333, 'Mexico', 3);
INSERT 0 1
practice=# INSERT INTO passports (passport_number, city_of_registration, fk_passports_users) values (4444, 'Mexico', 4);
INSERT 0 1
practice=# INSERT INTO passports (passport_number, city_of_registration, fk_passports_users) values (5555, 'Mexico', 5);
INSERT 0 1

practice=# select * from users;
 id | first_name | last_name
----+------------+------------
  1 | Amy        | Smith
  2 | Brad       | Nauman
  3 | Alice      | Wanderburg
  4 | Jey        | Stone
  5 | Gon        | Gitlin
(5 rows)


practice=# SELECT * from passports;
 id | passport_number | city_of_registration | fk_passports_users
----+-----------------+----------------------+--------------------
  1 |            1111 | Mexico               |                  1
  2 |            2222 | Mexico               |                  2
  3 |            3333 | Mexico               |                  3
  4 |            4444 | Mexico               |                  4
  5 |            5555 | Mexico               |                  5
(5 rows)


practice=# select users.first_name, passports.passport_number FROM users, passports WHERE users.id=passports.fk_passports_users;
 first_name | passport_number
------------+-----------------
 Amy        |            1111
 Brad       |            2222
 Alice      |            3333
 Jey        |            4444
 Gon        |            5555
(5 rows)
