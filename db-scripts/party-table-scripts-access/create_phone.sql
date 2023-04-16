CREATE TABLE phone (
    phone_id INTEGER NOT NULL PRIMARY KEY,
    party_id INTEGER NOT NULL,
    service_line_code TEXT,
    CONSTRAINT fk_phone_party
        FOREIGN KEY(party_id)
        REFERENCES party(party_id)
);