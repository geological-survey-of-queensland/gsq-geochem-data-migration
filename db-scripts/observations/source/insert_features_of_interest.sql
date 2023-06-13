INSERT INTO features_of_interest (iri, target_type, target_id, target_table)
SELECT
    "http://example.com/sample/" & Sample AS iri,
   1 AS target_type,
   Sample AS target_id,
   1 AS target_table
FROM s_Seds
