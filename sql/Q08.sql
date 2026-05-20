SELECT f.faculty_id, f.first_name, f.last_name FROM faculty f WHERE NOT EXISTS(SELECT 1 FROM shift_department_team sdt JOIN shift s ON sdt.shift_id=s.shift_id AND s.shift_date='2026-03-09' WHERE sdt.faculty_id=f.faculty_id AND sdt.dept_name='Cardiology');

