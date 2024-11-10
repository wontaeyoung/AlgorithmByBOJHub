WITH grade AS (
    SELECT emp_no,
        SUM(score) AS score
    FROM hr_grade
    GROUP BY emp_no
)

SELECT g.score,
    he.emp_no,
    he.emp_name,
    he.position,
    he.email
FROM hr_employees he JOIN grade g 
    ON he.emp_no = g.emp_no
ORDER BY g.score DESC
LIMIT 1