SELECT warehouse_id,
    warehouse_name,
    address,
    IFNULL(freezer_yn, 'N') AS freezer_yn
FROM food_warehouse
WHERE address LIKE '경기도%'
ORDER BY warehouse_id