SELECT p.name, COUNT(j.id) AS journeys_count
FROM planets p
JOIN spaceports s ON p.id = s.planet_id
JOIN journeys j ON s.id = j.destination_spaceport_id
GROUP BY p.name
ORDER BY journeys_count DESC, p.name;