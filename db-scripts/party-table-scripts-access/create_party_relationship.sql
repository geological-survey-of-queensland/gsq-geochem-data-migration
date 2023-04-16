CREATE TABLE party_relationship (
    relationship_id INTEGER NOT NULL PRIMARY KEY,
    party_id INTEGER NOT NULL,
    relationship_type TEXT NOT NULL,
    related_party_id INTEGER NOT NULL,
    CONSTRAINT fk_party_relationship_party
        FOREIGN KEY(party_id)
        REFERENCES party(party_id)
);