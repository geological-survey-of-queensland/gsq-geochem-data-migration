UPDATE party_relationship_temp INNER JOIN party_id ON party_relationship_temp.parent_company = party_id.Company SET party_relationship_temp.related_party_id = party_id.party_id_id;
