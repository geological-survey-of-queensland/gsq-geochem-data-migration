CREATE TABLE email (
    email_id INTEGER NOT NULL PRIMARY KEY,
    party_id INTEGER NOT NULL,
    email VARCHAR(200) NOT NULL,
    CONSTRAINT fk_email_party
        FOREIGN KEY(party_id)
        REFERENCES party(party_id)
);