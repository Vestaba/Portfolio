SELECT breastfeeding, birth_asphyxia, 
COUNT(*) AS total_count 
FROM autism_survey 
GROUP BY breastfeeding, birth_asphyxia;