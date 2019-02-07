
INSERT INTO movies (movie_ID, title, release_date, director_foreign_key)
VALUES (1, 'The Departed', 2006, 1)

INSERT INTO movies (movie_ID, title, release_date, director_foreign_key)
VALUES (2, 'Bad Boys', 1995, 2)

INSERT INTO movies (movie_ID, title, release_date, director_foreign_key)
VALUES (3, 'I Am Legend', 2007, 3)

INSERT INTO movies (movie_ID, title, release_date, director_foreign_key)
VALUES (4, 'The 13th Warrior', 1999, 4)

INSERT INTO movies (movie_ID, title, release_date, director_foreign_key)
VALUES (5, 'Pineapple Express', 2008, 5)

INSERT INTO movies (movie_ID, title, release_date, director_foreign_key)
VALUES (6, 'Superbad', 2007, 6)

INSERT INTO movies (movie_ID, title, release_date, director_foreign_key)
VALUES (7, 'Dodgeball', 2004, 7)

INSERT INTO movies (movie_ID, title, release_date, director_foreign_key)
VALUES (8, 'Three Billboards', 2017, 8)

INSERT INTO movies (movie_ID, title, release_date, director_foreign_key)
VALUES (9, 'Dallas Buyers Club', 2013, 9)



INSERT INTO director (director_id, name)
VALUES (1, 'Martin Scorsese')

INSERT INTO director (director_id, name)
VALUES (2, 'Michael Bay')

INSERT INTO director (director_id, name)
VALUES (3, 'Francis Lawrence')

INSERT INTO director (director_id, name)
VALUES (4, 'John McTiernan')

INSERT INTO director (director_id, name)
VALUES (5, 'David Gordon Green')

INSERT INTO director (director_id, name)
VALUES (6, 'Greg Mottola')

INSERT INTO director (director_id, name)
VALUES (7, 'Rawson Marshall Thurber')

INSERT INTO director (director_id, name)
VALUES (8, 'Martin McDonagh')

INSERT INTO director (director_id, name)
VALUES (9, 'Jean-Marc Vallée')



INSERT INTO actor (actor_ID, name, age)
VALUES (1, 'Leonardo DiCaprio', 44)

INSERT INTO actor (actor_ID, name, age)
VALUES (2, 'Will Smith', 50)

INSERT INTO actor (actor_ID, name, age)
VALUES (3, 'Matt Damon', 48)

INSERT INTO actor (actor_ID, name, age)
VALUES (4, 'Jack Nicholson', 81)

INSERT INTO actor (actor_ID, name, age)
VALUES (5, 'Martin Lawrence', 53)

INSERT INTO actor (actor_ID, name, age)
VALUES (6, 'Alice Braga', 35)

INSERT INTO actor (actor_ID, name, age)
VALUES (7, 'Antonio Banderas', 58)

INSERT INTO actor (actor_ID, name, age)
VALUES (8, 'Vladimir Kulich', 62)

INSERT INTO actor (actor_ID, name, age)
VALUES (9, 'Seth Rogen', 36)

INSERT INTO actor (actor_ID, name, age)
VALUES (10, 'James Franco', 40)

INSERT INTO actor (actor_ID, name, age)
VALUES (11, 'Jonah Hill', 35)

INSERT INTO actor (actor_ID, name, age)
VALUES (12, 'Michael Cera', 30)

INSERT INTO actor (actor_ID, name, age)
VALUES (13, 'Christopher Mintz-Plasse', 29)

INSERT INTO actor (actor_ID, name, age)
VALUES (14, 'Bill Hader', 40)

INSERT INTO actor (actor_ID, name, age)
VALUES (15, 'Emma Stone', 30)

INSERT INTO actor (actor_ID, name, age)
VALUES (16, 'Ben Stiller', 53)

INSERT INTO actor (actor_ID, name, age)
VALUES (17, 'Vince Vaughn', 48)

INSERT INTO actor (actor_ID, name, age)
VALUES (18, 'Christine Taylor', 47)

INSERT INTO actor (actor_ID, name, age)
VALUES (19, 'Frances McDormand', 61)

INSERT INTO actor (actor_ID, name, age)
VALUES (20, 'Woody Harrelson', 57)

INSERT INTO actor (actor_ID, name, age)
VALUES (21, 'Matthew McConaughey', 49)

INSERT INTO actor (actor_ID, name, age)
VALUES (22, 'Jennifer Garner', 46)

INSERT INTO actor (actor_ID, name, age)
VALUES (23, 'Jared Leto', 47)



INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (1, 1, 1)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (2, 2, 2)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (3, 3, 1)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (4, 4, 1)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (5, 5, 2)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (6, 2, 3)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (7, 6, 3)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (8, 7, 4)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (9, 8, 4)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (10, 9, 5)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (11, 10, 5)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (12, 11, 6)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (13, 12, 6)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (14, 13, 6)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (15, 14, 6)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (16, 15, 6)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (17, 16, 7)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (18, 17, 7)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (19, 18, 7)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (20, 19, 8)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (21, 20, 8)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (22, 21, 9)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (23, 22, 9)

INSERT INTO movie_actor (movie_actor, actor_foreign_key, movie_foreign_key)
VALUES (24, 23, 9)
