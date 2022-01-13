SELECT CONCAT(home_team, '-', away_team) AS game, COUNT(play_id) as games_count
FROM event_entity
GROUP BY home_team, away_team
ORDER BY games_count;