SELECT Gender, ASD, COUNT(*) AS total_count
FROM autism_survey
GROUP BY Gender, ASD
ORDER BY Gender, ASD;