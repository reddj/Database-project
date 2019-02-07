
CREATE TABLE Actor(
	actor_ID Integer NOT NULL,
	name text NOT NULL CHECK (length(name)<=255),
	age Integer,
	PRIMARY KEY(actor_ID)
)