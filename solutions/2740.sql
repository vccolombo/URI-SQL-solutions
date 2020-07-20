(SELECT ('Podium: ' || team) AS name FROM league
ORDER BY position
LIMIT 3)
UNION ALL (SELECT ('Demoted: ' || team) AS name FROM (
    SELECT * FROM league
    ORDER BY position DESC
    LIMIT 2) AS t1
ORDER BY position)