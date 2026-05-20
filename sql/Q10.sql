WITH presc_sub AS(
SELECT ALL p.hospitalization_id,p.prescription_id, a.substance_id
FROM prescription p JOIN substance_in_drug sid ON p.drug_id=sid.drug_id JOIN active_substance a ON sid.substance_id=a.substance_id
)
SELECT a1.hospitalization_id AS hosp_id, a1.substance_id AS sub1_id, a2.substance_id AS sub2_id, count(*) AS times_combined
FROM presc_sub a1 JOIN presc_sub a2 ON a1.hospitalization_id=a2.hospitalization_id WHERE a1.substance_id<a2.substance_id GROUP BY a1.hospitalization_id, a1.substance_id, a2.substance_id ORDER BY count(*) DESC LIMIT 3;
