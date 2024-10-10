SELECT
    ROUND(AVG(CASE WHEN length IS NULL THEN 10 ELSE length END), 2) AS average_length
FROM
    fish_info