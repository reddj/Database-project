
CREATE TABLE Director(
	director_ID Integer NOT NULL,
	name text NOT NULL CHECK (length(name)<=255),
	PRIMARY KEY(director_ID)
)