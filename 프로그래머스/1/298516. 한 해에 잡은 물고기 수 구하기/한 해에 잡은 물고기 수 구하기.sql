SELECT
    COUNT(CASE WHEN time BETWEEN "2021-01-01" AND "2021-12-31" THEN 1 ELSE NULL END) as fish_count
FROM
    fish_info