CREATE TABLE party_person_detail (
    person_detail_id AUTOINCREMENT PRIMARY KEY,
    party_id INTEGER NOT NULL,
    name_title TEXT,
    given_name VARCHAR(40) NOT NULL,
    family_name VARCHAR(40) NOT NULL,
    name_suffix VARCHAR(5),
    CONSTRAINT fk_pesron_detail_party
        FOREIGN KEY(party_id)
        REFERENCES party_party(party_id)
);