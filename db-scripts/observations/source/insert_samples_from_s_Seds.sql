INSERT INTO samples (SampleID, iri, label, type_notation, type, source)
SELECT
    Sample AS SampleID,
    "http://example.com/sample/" & Sample AS iri,
    "Sample " & SampleID AS label,
    Data_Type AS type_notation,
	60 AS type,
    1 AS source
FROM s_Seds