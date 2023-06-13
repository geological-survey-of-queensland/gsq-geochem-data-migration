SELECT 
    Sample_ID, 
    Sample_ID AS Observation_ID,
    Cu
FROM s_Seds
WHERE Cu IS NOT NULL
ORDER BY Sample_ID; 