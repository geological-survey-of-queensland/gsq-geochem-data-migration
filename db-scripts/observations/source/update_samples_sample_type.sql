UPDATE samples
INNER JOIN sample_types_vocab 
ON samples.type_notation = sample_types_vocab.notation
SET samples.type = sample_types_vocab.ID;