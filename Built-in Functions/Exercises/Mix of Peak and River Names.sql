SELECT p.peak_name,
       r.river_name,
       CONCAT(LOWER(p.peak_name), LOWER(SUBSTRING(r.river_name, 2))) AS mix
FROM rivers r,
     peaks p
WHERE RIGHT(p.peak_name, 1) = LOWER(LEFT(r.river_name, 1))
ORDER BY mix;