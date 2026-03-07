SELECT Mothers_age, ASD, COUNT(*) AS total_count 
FROM autism_survey 
GROUP BY Mothers_age, ASD 
ORDER BY Mothers_age, ASD;