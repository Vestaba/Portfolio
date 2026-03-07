SELECT
Mothers_age,
ASD,
COUNT(*) AS total_count
FROM autism_survey
GROUP BY Mothers_age, ASD
ORDER BY
CASE
WHEN Mothers_age = 'Less than 21 years' THEN 1
WHEN Mothers_age = '21 to 35 years' THEN 2
WHEN Mothers_age = 'More than 35 years' THEN 3
ELSE 4
END,
ASD;