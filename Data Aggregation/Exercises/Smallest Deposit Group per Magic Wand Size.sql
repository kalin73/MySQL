SELECT t.deposit_group
FROM (SELECT deposit_group, AVG(magic_wand_size) AS avgSize
      FROM wizzard_deposits
      GROUP BY deposit_group
      ORDER BY avgSize
      LIMIT 1) AS t
