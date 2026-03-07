SELECT family_history, asd, 
COUNT(*) AS total_count 
FROM autism_survey 
GROUP BY family_history, asd 
ORDER BY asd DESC;