INSERT INTO party_party_relationship ( party_id, relationship_type, related_party_id )
SELECT party_id, "http://linked.data.gov.au/def/party-relationship/parent", related_party_id
FROM party_relationship_temp
WHERE related_party_id IS NOT NULL;
