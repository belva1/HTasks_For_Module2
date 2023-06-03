# joins

literature=# select title, genre from books inner join genres on books.genre_id = genres.id;
        title         | genre
----------------------+-------
 Master and Margarita | novel
 White Fang           | story
 Dune                 | SF
 War and Peace        | novel
(4 rows)


literature=# select title, genre from books left join genres on books.genre_id = genres.id;
        title         | genre
----------------------+-------
 Master and Margarita | novel
 Faust                |
 White Fang           | story
 Dune                 | SF
 War and Peace        | novel
(5 rows)


literature=# select title, genre from books right join genres on books.genre_id = genres.id;
        title         | genre
----------------------+--------
 Master and Margarita | novel
 White Fang           | story
 Dune                 | SF
 War and Peace        | novel
                      | horror
(5 rows)


literature=# select title, genre from books full join genres on books.genre_id = genres.id;
        title         | genre
----------------------+--------
 Master and Margarita | novel
 Faust                |
 White Fang           | story
 Dune                 | SF
 War and Peace        | novel
                      | horror
(6 rows)



literature=# select title from books left join genres on books.genre_id = genres.id where genre is null;
 title
-------
 Faust
(1 row)


literature=# select genre from books right join genres on books.genre_id = genres.id where title is null;
 genre
--------
 horror
(1 row)


literature=# select title, genre from books left join genres on books.genre_id = genres.id
literature-# UNION
literature-# select title, genre from books right join genres on books.genre_id = genres.id;
        title         | genre
----------------------+--------
 Dune                 | SF
 War and Peace        | novel
                      | horror
 Faust                |
 White Fang           | story
 Master and Margarita | novel
(6 rows)



