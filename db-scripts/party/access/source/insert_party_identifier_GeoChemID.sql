INSERT INTO party_party_identifier ( party_id, identifier_code, identifier_name )
SELECT party_party_id.ID, party_party_id.Company, "http://linked.data.gov.au/def/party-identifier-type/geochemdb"
FROM party_party_id;
