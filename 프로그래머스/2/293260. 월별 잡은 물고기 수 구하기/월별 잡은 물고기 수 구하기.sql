SELECT COUNT(*) AS fish_count,
    MONTH(time) AS month
FROM fish_info
GROUP BY month
ORDER BY month