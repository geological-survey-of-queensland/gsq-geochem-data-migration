INSERT INTO party_party_identifier ( party_id, identifier_code, identifier_name )
SELECT party_party_id.ID, lib_Company.AESIS_Code, "http://linked.data.gov.au/def/party-identifier-type/aesis"
FROM party_party_id INNER JOIN lib_Company ON party_party_id.Company = lib_Company.Company
WHERE lib_Company.AESIS_Code IS NOT NULL;
