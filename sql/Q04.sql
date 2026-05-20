WITH doc_eval AS
(
SELECT p.doctor_id, AVG(e.medical_care_quality) AS avg_medical_care FROM prescription p JOIN evaluation_of_doctor e ON p.prescription_id=e.prescription_id GROUP BY p.doctor_id
),
hosp_eval AS
(
SELECT p.doctor_id, AVG(eh.overall_experience) AS avg_hosp_exp FROM prescription p JOIN evaluation_of_hospitalization eh ON p.hospitalization_id=eh.hospitalization_id GROUP BY p.doctor_id
)
SELECT d.doctor_id AS prescribing_doc_id, d.first_name, d.last_name, dr.avg_medical_care, hr.avg_hosp_exp FROM doctor_full_info d LEFT JOIN doc_eval dr ON d.doctor_id=dr.doctor_id LEFT JOIN hosp_eval hr ON d.doctor_id=hr.doctor_id WHERE d.doctor_id=42;
