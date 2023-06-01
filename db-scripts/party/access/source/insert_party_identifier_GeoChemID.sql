INSERT INTO party_party_identifier ( party_id, identifier_code, identifier_name )
SELECT party_id.party_id_id, party_id.Company, "http://linked.data.gov.au/def/party-identifier-type/geochemdb"
FROM party_id;
