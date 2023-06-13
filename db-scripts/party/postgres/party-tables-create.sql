CREATE TABLE party (
    party_id BIGINT NOT NULL PRIMARY KEY,
    party_type VARCHAR(256) NOT NULL
);

CREATE TABLE person_detail (
    person_detail_id BIGINT NOT NULL PRIMARY KEY,
    party_id BIGINT NOT NULL,
    name_title TEXT,
    given_name VARCHAR(40) NOT NULL,
    family_name VARCHAR(40) NOT NULL,
    name_suffix VARCHAR(5),
    CONSTRAINT fk_party
        FOREIGN KEY(party_id)
        REFERENCES party(party_id)
);

CREATE TABLE party_identifier (
    identifier_id BIGINT NOT NULL PRIMARY KEY,
    party_id BIGINT NOT NULL,
    identifier_code VARCHAR(20) NOT NULL,
    identifier_name TEXT NOT NULL,
    identifier_alt VARCHAR(10),
    CONSTRAINT fk_party
        FOREIGN KEY(party_id)
        REFERENCES party(party_id)
);

CREATE TABLE organisation_detail (
    organisation_detail_id BIGINT NOT NULL PRIMARY KEY,
    party_id BIGINT NOT NULL,
    organisation_name VARCHAR(256) NOT NULL,
    org_name_type TEXT,
    organisation_type TEXT,
    activity_status TEXT NOT NULL,
    CONSTRAINT fk_party
        FOREIGN KEY(party_id)
        REFERENCES party(party_id)
);

CREATE TABLE party_relationship (
    relationship_id BIGINT NOT NULL PRIMARY KEY,
    party_id BIGINT NOT NULL,
    relationship_type TEXT NOT NULL,
    related_party_id BIGINT NOT NULL,
    CONSTRAINT fk_party
        FOREIGN KEY(party_id)
        REFERENCES party(party_id)
);

CREATE TABLE address (
    address_id BIGINT NOT NULL PRIMARY KEY AUTOINCREMENT,
    party_id BIGINT NOT NULL,
    address_type TEXT NOT NULL,
    CONSTRAINT fk_party
        FOREIGN KEY(party_id)
        REFERENCES party(party_id)
);

CREATE TABLE phone (
    phone_id BIGINT NOT NULL PRIMARY KEY,
    party_id BIGINT NOT NULL,
    service_line_code TEXT,
    CONSTRAINT fk_party
        FOREIGN KEY(party_id)
        REFERENCES party(party_id)
);

CREATE TABLE email (
    email_id BIGINT NOT NULL PRIMARY KEY,
    party_id BIGINT NOT NULL,
    email VARCHAR(256) NOT NULL,
    CONSTRAINT fk_party
        FOREIGN KEY(party_id)
        REFERENCES party(party_id)
);

CREATE TABLE address_detail (
    address_detail_id BIGINT NOT NULL PRIMARY KEY,
    address_id BIGINT NOT NULL,
    address_line_1 VARCHAR(256) NOT NULL,
    address_line_2 VARCHAR(256),
    locality VARCHAR(50) NOT NULL,
    state TEXT,
    postcode VARCHAR(8) NOT NULL,
    country TEXT NOT NULL,
    CONSTRAINT fk_address
        FOREIGN KEY(address_id)
        REFERENCES address(address_id)
);

CREATE TABLE phone_detail (
    phone_detail_id BIGINT NOT NULL PRIMARY KEY,
    phone_id BIGINT NOT NULL,
    country_calling_code VARCHAR(5) NOT NULL,
    australian_area_code TEXT,
    phone_number VARCHAR(16),
    CONSTRAINT fk_phone
        FOREIGN KEY(phone_id)
        REFERENCES phone(phone_id)
);

CREATE TABLE party_role (
    party_role_id BIGINT NOT NULL PRIMARY KEY,
    site_id BIGINT,
    report_id BIGINT,
    sample_id BIGINT,
    party_id BIGINT NOT NULL,
    wellbore_id BIGINT,
    borehole_id BIGINT,
    observation_id BIGINT,
    survey_id BIGINT,
    role TEXT,
    start_date TIMESTAMPTZ,
    end_date TIMESTAMPTZ,
    CONSTRAINT fk_party8
        FOREIGN KEY(party_id)
        REFERENCES party(party_id)
);