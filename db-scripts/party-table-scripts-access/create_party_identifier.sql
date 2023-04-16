CREATE TABLE party_identifier (
    identifier_id INTEGER NOT NULL PRIMARY KEY,
    party_id INTEGER NOT NULL,
    identifier_code VARCHAR(20) NOT NULL,
    identifier_name TEXT NOT NULL,
    identifier_alt VARCHAR(10),
    CONSTRAINT fk_party_identifier_party
        FOREIGN KEY(party_id)
        REFERENCES party(party_id)
);