CREATE TABLE wfdb_diagnoses AS
SELECT
  w.record_id,
  w.subject_id,
  w.hadm_id,
  d.seq_num,
  d.icd_code,
  d.icd_version
FROM
  wfdb_meta AS w
  JOIN mimiciv_hosp.diagnoses_icd AS d
    ON w.subject_id = d.subject_id
   AND w.hadm_id    = d.hadm_id
;

SELECT * FROM wfdb_diagnoses LIMIT 10;

\copy (SELECT record_id, subject_id, hadm_id, seq_num, icd_code, icd_version FROM wfdb_diagnoses) TO 'wfdb_diagnoses.csv' CSV HEADER;