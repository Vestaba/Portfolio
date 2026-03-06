SELECT birth_weight, COUNT(*) AS total_count FROM autism_survey 
GROUP BY birth_weight 
ORDER BY total_count DESC;