INSERT INTO party_party_identifier ( party_id, identifier_code, identifier_name )
SELECT party_id.party_id_id, lib_Company.Old_Code, "http://linked.data.gov.au/def/party-identifier-type/geochemdbold"
FROM party_id INNER JOIN lib_Company ON party_id.Company = lib_Company.Company
WHERE lib_Company.Old_Code IS NOT NULL;
