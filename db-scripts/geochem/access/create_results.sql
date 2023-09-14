Create table results (
	ID AUTOINCREMENT PRIMARY KEY,
	is_result_of INTEGER,
	unit TEXT,
	value TEXT,
	value_type TEXT,
	margin_of_error INTEGER,
	CONSTRAINT fk_is_result_of
			FOREIGN KEY(is_result_of)
			REFERENCES observations(ID)	
);