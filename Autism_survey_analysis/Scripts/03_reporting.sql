/* 03_REPORTING.SQL
PURPOSE: Generate final summary reports for clinical insights.
FOCUS: Family History and Sibling Correlation.
*/

"""REPORT 1: The Sibling Correlation Breakdown"""
-- This query isolates the strongest predictor found in the dataset.
SELECT
family_history AS "Sibling History",
asd AS "Diagnosis (1=Yes, 0=No)",
COUNT(*) AS "Patient Count"
FROM autism_survey
GROUP BY family_history, asd
ORDER BY family_history DESC;

"""REPORT 2: High-Level Clinical Summary"""
-- Provides a quick snapshot of the total dataset for stakeholders.
SELECT
COUNT(*) AS "Total Participants",
ROUND(AVG(CAST(asd AS NUMERIC)), 2) * 100 || '%' AS "Overall ASD Rate"
FROM autism_survey;