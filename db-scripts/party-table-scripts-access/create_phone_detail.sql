CREATE TABLE phone_detail (
    phone_detail_id INTEGER NOT NULL PRIMARY KEY,
    phone_id INTEGER NOT NULL,
    country_calling_code VARCHAR(5) NOT NULL,
    australian_area_code TEXT,
    phone_number VARCHAR(16),
    CONSTRAINT fk_phone_detail_phone
        FOREIGN KEY(phone_id)
        REFERENCES phone(phone_id)
);