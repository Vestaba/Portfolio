SELECT ASD, premature_birth, birth_asphyxia, COUNT(*) AS total_count 
FROM autism_survey 
GROUP BY premature_birth, birth_asphyxia, ASD 
ORDER BY ASD DESC, total_count DESC;