SELECT id,
    email,
    first_name,
    last_name
FROM developer_infos
WHERE SKILL_1 = "Python"
    OR SKILL_2 = "Python"
    OR SKILL_3 = "Python"
ORDER BY id