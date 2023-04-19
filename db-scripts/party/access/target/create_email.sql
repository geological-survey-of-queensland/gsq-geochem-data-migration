CREATE TABLE party_email (
    email_id AUTOINCREMENT PRIMARY KEY,
    party_id INTEGER NOT NULL,
    email VARCHAR(200) NOT NULL,
    CONSTRAINT fk_email_party
        FOREIGN KEY(party_id)
        REFERENCES party_party(party_id)
);