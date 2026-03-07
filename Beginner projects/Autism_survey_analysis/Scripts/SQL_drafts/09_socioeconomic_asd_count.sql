SELECT socio_economic, ASD, COUNT(*) AS total_count
FROM autism_survey
GROUP BY socio_economic, ASD
ORDER BY socio_economic, ASD;
