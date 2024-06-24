SELECT * 
FROM rnacen.rna
WHERE LENGTH(seq_short) > 12 
AND timestamp > '2008-12-31 23:59:59'
ORDER BY upi ASC LIMIT 1000
