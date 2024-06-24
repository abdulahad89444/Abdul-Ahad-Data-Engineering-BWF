SELECT COUNT(*) AS totalActiveRna
FROM rnacen.rnc_rna_precomputed
Where is_active = TRUE
AND update_date < '2022-01-01'

