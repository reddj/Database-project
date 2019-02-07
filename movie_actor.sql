
CREATE TABLE movie_actor(
	movie_actor Integer NOT NULL,
	actor_foreign_key Integer NOT NULL,
	movie_foreign_key Integer NOT NULL,
	FOREIGN KEY(actor_foreign_key) REFERENCES Actor(actor_ID),
	FOREIGN KEY(movie_foreign_key) REFERENCES Movies(movie_ID),
	PRIMARY KEY(movie_actor)
)