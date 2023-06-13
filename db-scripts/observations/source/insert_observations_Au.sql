SELECT 
    Sample_ID, 
    Sample_ID AS Observation_ID,
    Au
FROM s_Seds
WHERE Au IS NOT NULL
ORDER BY Sample_ID; 