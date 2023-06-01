INSERT INTO party_relationship_temp ( party_id, parent_company )
SELECT party_id.party_id_id, lib_Company.Parent_Company
FROM party_id INNER JOIN lib_Company ON party_id.Company = lib_Company.Company
WHERE lib_Company.Parent_Company IS NOT NULL;
