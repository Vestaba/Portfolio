SELECT Birth_Weight, ASD, COUNT(*) AS total_count 
FROM autism_survey 
GROUP BY Birth_Weight, ASD 
ORDER BY Birth_Weight, ASD