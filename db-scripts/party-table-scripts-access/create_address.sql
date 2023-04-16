CREATE TABLE address (
    address_id INTEGER NOT NULL PRIMARY KEY,
    party_id INTEGER NOT NULL,
    address_type TEXT NOT NULL,
    CONSTRAINT fk_address_party
        FOREIGN KEY(party_id)
        REFERENCES party(party_id)
);
