SELECT COUNT(
        CASE WHEN YEAR(joined) = 2021
            AND age BETWEEN 20 AND 29
        THEN 1
        ELSE NULL END
) AS USERS
FROM user_info