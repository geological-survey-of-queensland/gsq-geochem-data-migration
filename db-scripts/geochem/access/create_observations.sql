CREATE TABLE observations (
    ID AUTOINCREMENT PRIMARY KEY,
	phenomenon_time TEXT,
	used_procedure INTEGER, -- 243
	made_by_sensor INTEGER, -- unknown
	observed_property INTEGER,
	has_feature_of_interest INTEGER,
	has_result INTEGER, -- not generated yet
	source INTEGER NOT NULL, -- 1
	temp_sample_id TEXT,
	CONSTRAINT fk_used_procedure
        FOREIGN KEY (used_procedure)
        REFERENCES procedures (ID),
	CONSTRAINT fk_made_by_sensor
        FOREIGN KEY (made_by_sensor)
        REFERENCES sensors (ID)
	CONSTRAINT fk_observed_property
        FOREIGN KEY (observed_property)
        REFERENCES observable_properties (ID),
	CONSTRAINT fk_has_feature_of_interest
        FOREIGN KEY (has_feature_of_interest)
        REFERENCES features_of_interest (ID),
	CONSTRAINT fk_observations_source
        FOREIGN KEY (source)
        REFERENCES sources (ID),
);