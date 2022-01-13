SELECT
    client_number,
    SUM(outcome = "win") as "Побед",
    SUM(outcome = "lose") AS "Поражений"
FROM bid
    INNER JOIN event_value ON bid.play_id = event_value.play_id
WHERE bid.coefficient = event_value.value
GROUP BY client_number