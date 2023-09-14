Create table features_of_interest (
	ID AUTOINCREMENT PRIMARY KEY,
	original_id INTEGER,
	original_table INTEGER,
	CONSTRAINT fk_original_tables
			FOREIGN KEY(original_table)
			REFERENCES foi_original_tables(ID)
);