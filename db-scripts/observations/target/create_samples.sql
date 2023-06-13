CREATE TABLE samples (
    ID AUTOINCREMENT PRIMARY KEY,
    SampleID TEXT NOT NULL,
    iri TEXT NOT NULL,
	label TEXT NOT NULL,
	type_notation TEXT NOT NULL,
	type INTEGER NOT NULL,
	source INTEGER NOT NULL,
    CONSTRAINT fk_sample_type
        FOREIGN KEY (type)
        REFERENCES sample_types_vocab (ID),
    CONSTRAINT fk_sample_source
        FOREIGN KEY (source)
        REFERENCES sources (ID)
);