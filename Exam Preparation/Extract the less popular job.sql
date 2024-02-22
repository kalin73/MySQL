SELECT t.job_during_journey AS job_name
FROM (SELECT tc.journey_id,
             tc.job_during_journey,
             COUNT(colonist_id)                            AS job_count,
             MAX(DATEDIFF(j.journey_end, j.journey_start)) AS longest
      FROM travel_cards tc
      JOIN journeys j ON tc.journey_id = j.id
      GROUP BY tc.job_during_journey, tc.journey_id
      ORDER BY longest DESC, job_count) AS t
LIMIT 1;