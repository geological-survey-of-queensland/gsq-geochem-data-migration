CREATE TABLE party_party_role (
    party_role_id AUTOINCREMENT PRIMARY KEY,
    site_id INTEGER,
    report_id INTEGER,
    sample_id INTEGER,
    party_id INTEGER NOT NULL,
    wellbore_id INTEGER,
    borehole_id INTEGER,
    observation_id INTEGER,
    survey_id INTEGER,
    role TEXT,
    start_date DATETIME,
    end_date DATETIME,
    CONSTRAINT fk_party_role_party
        FOREIGN KEY(party_id)
        REFERENCES party_party(party_id)
);