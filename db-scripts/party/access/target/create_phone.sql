CREATE TABLE party_phone (
    phone_id AUTOINCREMENT PRIMARY KEY,
    party_id INTEGER NOT NULL,
    service_line_code TEXT,
    CONSTRAINT fk_phone_party
        FOREIGN KEY(party_id)
        REFERENCES party_party(party_id)
);