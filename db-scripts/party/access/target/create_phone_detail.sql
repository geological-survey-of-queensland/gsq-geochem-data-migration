CREATE TABLE party_phone_detail (
    phone_detail_id AUTOINCREMENT PRIMARY KEY,
    phone_id INTEGER NOT NULL,
    country_calling_code VARCHAR(5) NOT NULL,
    australian_area_code TEXT,
    phone_number VARCHAR(16),
    CONSTRAINT fk_phone_detail_phone
        FOREIGN KEY(phone_id)
        REFERENCES party_phone(phone_id)
);