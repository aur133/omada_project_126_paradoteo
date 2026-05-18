WITH doc_eval(prescribing_doctor_id, first_name, last_name, prescription_id, evaluation_doc_id, hospitalization_id, medical_care_quality) AS (
    SELECT p.doctor_id, d.first_name, d.last_name, p.prescription_id, e.evaluation_of_doc_id, p.hospitalization_id, e.medical_care_quality 
    FROM prescription p 
    JOIN evaluation_of_doctor e ON p.prescription_id=e.prescription_id 
    JOIN doctor_full_info d ON d.doctor_id=p.doctor_id
)
SELECT de.prescribing_doctor_id, de.first_name, de.last_name, avg(de.medical_care_quality) AS avg_doc_rating, avg(eh.overall_experience) AS avg_hosp_rating 
FROM doc_eval de 
JOIN evaluation_of_hospitalization eh ON de.hospitalization_id=eh.hospitalization_id 
WHERE de.prescribing_doctor_id=42 
GROUP BY de.prescribing_doctor_id, de.first_name, de.last_name;
