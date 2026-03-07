/*03_REPORTING.SQL
Project: Autism Survey Analysis
Purpose: Generate final clinical insights and demographic summaries.
*/

-- REPORT 1: Sibling Correlation Analysis
-- This isolates the 100% correlation between family history and diagnosis.
SELECT
family_history AS "Sibling History",
asd AS "Diagnosis (1=Yes, 0=No)",
COUNT(*) AS "Total Patients"
FROM autism_survey
GROUP BY family_history, asd
ORDER BY family_history DESC;

-- REPORT 2: Maternal Age Distribution
-- Uses a CASE statement to force the correct age order.
SELECT
Mothers_age AS "Maternal Age Bracket",
ASD AS "Diagnosis",
COUNT(*) AS "Count"
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

-- REPORT 3: Executive Summary Stats
-- Provides the overall diagnosis rate for the entire project.
SELECT
COUNT(*) AS "Total Records Analyzed",
ROUND(AVG(CAST(asd AS NUMERIC)), 2) * 100 || '%' AS "Overall Diagnosis Rate"
FROM autism_survey;