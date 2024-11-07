SELECT animal_type, 
    COUNT(animal_type)
FROM animal_ins
WHERE animal_type IN ('cat','dog')
GROUP BY animal_type
ORDER BY animal_type