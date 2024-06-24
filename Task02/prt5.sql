SELECT DISTINCT exon_count
FROM (
    SELECT region_name AS myregions, exon_count
    FROM rnacen.rnc_sequence_regions
    WHERE region_name ILIKE '%:+%' OR region_name ILIKE '%:-%' OR region_name ILIKE '%@scaf%'
    LIMIT 500
) AS subquery;
