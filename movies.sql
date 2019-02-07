
CREATE TABLE Movies(
	movie_ID Integer NOT NULL,
	title text NOT NULL CHECK (length(title)<=255),
	release_date Integer,
	director_foreign_key Integer NOT NULL,
	PRIMARY KEY(movie_ID),
	FOREIGN KEY(director_foreign_key) REFERENCES Director(director_ID)
)