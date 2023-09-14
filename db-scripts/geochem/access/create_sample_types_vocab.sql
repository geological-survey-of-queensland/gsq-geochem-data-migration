CREATE TABLE sample_types_vocab (
    ID AUTOINCREMENT PRIMARY KEY,
	notation TEXT NOT NULL,
    iri TEXT NOT NULL,
	pref_label TEXT NOT NULL,
	definition TEXT,
	broader INTEGER,
	CONSTRAINT fk_sample_types_broader
        FOREIGN KEY(broader)
        REFERENCES sample_types_vocab(ID)
);