PROJECT: Autism Survey Data Analysis
PURPOSE: Exploratory Data Analysis (EDA)

1. MATERNAL AGE DISTRIBUTION
-- Identifying the age profile of mothers.
SELECT mothers_age, COUNT(*) AS total_count
FROM autism_survey
GROUP BY mothers_age
ORDER BY total_count DESC;

2. BIRTH WEIGHT CATEGORIES
-- Determining prevalence of Low Birth Weight vs Normal Weight.
SELECT birth_weight, COUNT(*) AS total_count
FROM autism_survey
GROUP BY birth_weight
ORDER BY total_count DESC;

3. GENDER BREAKDOWN
-- Checking for gender balance (316 Male vs 281 Female).
SELECT gender, COUNT(*) AS total_count
FROM autism_survey
GROUP BY gender;

4. CLINICAL INDICATORS (BREASTFEEDING & ASPHYXIA)
-- Looking at birth complications and postnatal care.
SELECT breastfeeding, birth_asphyxia, COUNT(*) AS total_count
FROM autism_survey
GROUP BY breastfeeding, birth_asphyxia;

5. FAMILY HISTORY VS. ASD DIAGNOSIS
-- 100% correlation found between Sibling History and ASD Diagnosis.
-- Also noted 257 "de novo" cases (Diagnosis 1.0 with No Family History).
SELECT family_history, asd, COUNT(*) AS total_count
FROM autism_survey
GROUP BY family_history, asd
ORDER BY asd DESC;