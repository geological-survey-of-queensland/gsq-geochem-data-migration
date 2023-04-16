CREATE TABLE organisation_detail (
    organisation_detail_id INTEGER NOT NULL PRIMARY KEY,
    party_id INTEGER NOT NULL,
    organisation_name VARCHAR(200) NOT NULL,
    org_name_type TEXT,
    organisation_type TEXT,
    activity_status TEXT NOT NULL,
    CONSTRAINT fk_organisation_detail_party
        FOREIGN KEY(party_id)
        REFERENCES party(party_id)
);