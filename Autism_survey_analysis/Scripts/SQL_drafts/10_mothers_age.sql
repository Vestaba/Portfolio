SELECT mothers_age, COUNT(*) AS total_count 
FROM autism_survey
GROUP BY mothers_age 
ORDER BY total_count DESC;