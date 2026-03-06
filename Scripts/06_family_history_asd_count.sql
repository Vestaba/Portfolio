SELECT Family_history, ASD, COUNT(*) AS total_count 
FROM autism_survey 
GROUP BY Family_history, ASD 
ORDER BY Family_history, ASD;