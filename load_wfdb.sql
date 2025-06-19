CREATE TABLE IF NOT EXISTS wfdb_meta (
  subject_id INTEGER,
  record_id  TEXT PRIMARY KEY,
  hadm_id    INTEGER
);

\copy wfdb_meta(subject_id,record_id,hadm_id) FROM './mimiciv_wfdb_meta.csv' CSV HEADER