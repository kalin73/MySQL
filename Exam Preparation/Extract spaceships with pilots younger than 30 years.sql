SELECT s.name, s.manufacturer
FROM colonists c
         JOIN travel_cards tc ON tc.colonist_id = c.id
         JOIN journeys j on tc.journey_id = j.id
         JOIN spaceships s on j.spaceship_id = s.id
WHERE DATEDIFF('2019-01-01', c.birth_date) / 365.2425 < 30
  AND tc.job_during_journey = 'Pilot'
ORDER BY s.name;