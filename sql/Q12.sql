WITH faculty_subclasses AS(
(SELECT doctor_id AS faculty_id, 'doctor' AS class, CONCAT('Doctor with specialty: ', med_specialty) AS subclass FROM doctor) UNION ALL
(SELECT nurse_id, 'nurse' AS class, CONCAT('Nurse with rank: ',nurse_rank) AS subclass FROM nurse) UNION ALL
(SELECT administrativeFaculty_id, 'administrative_faculty' AS class, CONCAT('Administrative staff with role: ',role) AS subclass FROM administrative_faculty)
)
SELECT sdt.dept_name, sdt.shift_id, fsc.subclass, count(DISTINCT fsc.faculty_id) AS required_staff FROM faculty_subclasses fsc JOIN faculty_shifts fs ON fsc.faculty_id=fs.faculty_id AND fs.date BETWEEN  '2026-03-09' AND '2026-03-15' JOIN shift_department_team sdt ON fs.shift_id=sdt.shift_id GROUP BY sdt.dept_name, sdt.shift_id, fsc.subclass ORDER BY sdt.shift_id;

