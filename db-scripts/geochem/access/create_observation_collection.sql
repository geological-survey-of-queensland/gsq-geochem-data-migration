Create table observation_collections (
	ID AUTOINCREMENT PRIMARY KEY,
	name TEXT,
	source INTEGER NOT NULL,
	CONSTRAINT fk_observation_collections_source
        FOREIGN KEY (source)
        REFERENCES sources (ID)
);