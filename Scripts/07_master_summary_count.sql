SELECT ASD, Gender, Family_history, COUNT(*) AS total_count 
FROM autism_survey 
GROUP BY ASD, Gender, Family_history 
ORDER BY ASD, Gender;