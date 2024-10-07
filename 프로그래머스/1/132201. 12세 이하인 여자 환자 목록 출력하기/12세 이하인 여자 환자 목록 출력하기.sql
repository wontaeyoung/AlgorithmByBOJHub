SELECT
    pt_name,
    pt_no,
    gend_cd,
    age,
    IFNULL(tlno, "NONE") as tlno
FROM 
    patient
WHERE
    gend_cd="W"
    AND age <= 12
ORDER BY 
    age DESC,
    pt_name