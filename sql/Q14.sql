WITH annual_disease_type_cases AS (
    SELECT EXTRACT(YEAR FROM h.admission_date) AS year, d.disease_type, COUNT(*) AS num_of_cases 
    FROM diagnosis d 
    JOIN hospitalization h ON h.hospitalization_admissionDiagnosis_code = d.ICD10_code 
    GROUP BY EXTRACT(YEAR FROM h.admission_date), d.disease_type
)
SELECT a.disease_type, a.year AS year_p, b.year AS year_n, a.num_of_cases FROM annual_disease_type_cases a JOIN annual_disease_type_cases b ON a.disease_type = b.disease_type WHERE a.year = b.year - 1 AND a.num_of_cases = b.num_of_cases AND a.num_of_cases > 4;
