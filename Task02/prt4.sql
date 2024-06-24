SELECT id,userstamp, display_name, min_length 
FROM rnacen.rnc_database
WHERE userstamp = 'RNACEN'
AND min_length NOT IN (100, 200, 300, 400, 15)
