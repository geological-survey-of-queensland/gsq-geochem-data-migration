INSERT INTO party_relationship_temp ( party_id, parent_company )
SELECT party_party_id.ID, lib_Company.Parent_Company
FROM party_party_id INNER JOIN lib_Company ON party_party_id.Company = lib_Company.Company
WHERE lib_Company.Parent_Company IS NOT NULL;
