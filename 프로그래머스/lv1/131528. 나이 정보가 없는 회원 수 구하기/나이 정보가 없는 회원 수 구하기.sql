SELECT
sum(case when age is null then 1 else 0 end) as USERS
FROM USER_INFO