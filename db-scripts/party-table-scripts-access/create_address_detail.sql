CREATE TABLE address_detail (
    address_detail_id INTEGER NOT NULL PRIMARY KEY,
    address_id INTEGER NOT NULL,
    address_line_1 VARCHAR(200) NOT NULL,
    address_line_2 VARCHAR(200),
    locality VARCHAR(50) NOT NULL,
    state TEXT,
    postcode VARCHAR(8) NOT NULL,
    country TEXT NOT NULL,
    CONSTRAINT fk_address_detail_address
        FOREIGN KEY(address_id)
        REFERENCES address(address_id)
);