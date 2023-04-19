CREATE TABLE party_address (
    address_id AUTOINCREMENT PRIMARY KEY,
    party_id INTEGER NOT NULL,
    address_type TEXT NOT NULL,
    CONSTRAINT fk_address_party
        FOREIGN KEY(party_id)
        REFERENCES party_party(party_id)
);