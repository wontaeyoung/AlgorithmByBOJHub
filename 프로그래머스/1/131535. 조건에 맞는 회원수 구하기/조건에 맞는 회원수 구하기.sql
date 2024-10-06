SELECT
    COUNT(
        CASE WHEN
            joined >= '2021-01-01'
            AND joined < '2022-01-01'
            AND age >= 20
            AND age < 30
        THEN 1
        ELSE NULL END
    ) AS USERS
FROM
    user_info
