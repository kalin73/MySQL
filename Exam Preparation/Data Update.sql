UPDATE journeys
SET purpose = CASE
                  WHEN MOD(id, 2) = 0 THEN 'Medical'
                  WHEN MOD(id, 3) = 0 THEN 'Technical'
                  WHEN MOD(id, 5) = 0 THEN 'Educational'
                  WHEN MOD(id, 7) = 0 THEN 'Military'
                  ELSE purpose
    END;