SELECT d.doctor_id, d.first_name, d.last_name, CASE WHEN EXISTS (SELECT 1 FROM faculty_shifts fs WHERE fs.faculty_id = d.doctor_id AND fs.date>= '2026-01-01' ) THEN 'YES' ELSE 'NO' END AS had_shift_this_year, (SELECT COUNT(*) FROM medical_procedures mp WHERE mp.mainSurgeon_id = d.doctor_id) AS num_procedures_main_surgeon 
FROM doctor_full_info d WHERE d.med_specialty = 'Cardiac Surgery';
