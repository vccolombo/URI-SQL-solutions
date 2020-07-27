SELECT 
	name, (victories + draws + defeats) AS matches, 
	victories, defeats, draws,
	(victories*3 + draws) AS score 
FROM
(
    SELECT name, 
	SUM(victories) AS victories,
	SUM(draws) AS draws,
	SUM(defeats) AS defeats
    FROM (
        SELECT name,
        CASE
            WHEN t1.team_1_goals > t1.team_2_goals THEN 1
            ELSE 0
        END AS victories,
        CASE
            WHEN t1.team_1_goals = t1.team_2_goals THEN 1
            ELSE 0
        END AS draws,
        CASE
            WHEN t1.team_1_goals < t1.team_2_goals THEN 1
            ELSE 0
        END AS defeats
        FROM teams
        INNER JOIN matches AS t1 ON teams.id = t1.team_1

        UNION ALL
        
        SELECT name,
        CASE
            WHEN t2.team_2_goals > t2.team_1_goals THEN 1
            ELSE 0
        END AS victories,
        CASE
            WHEN t2.team_2_goals = t2.team_1_goals THEN 1
            ELSE 0
        END AS draws,
        CASE
            WHEN t2.team_2_goals < t2.team_1_goals THEN 1
            ELSE 0
        END AS defeats
        FROM teams
        INNER JOIN matches AS t2 ON teams.id = t2.team_2
    ) q1
    GROUP BY name
) q2
ORDER BY score DESC, name
