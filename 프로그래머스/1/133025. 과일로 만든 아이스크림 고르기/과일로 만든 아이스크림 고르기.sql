SELECT fh.flavor
FROM first_half fh
    JOIN icecream_info ii ON fh.flavor = ii.flavor
WHERE fh.total_order > 3000
    AND ii.ingredient_type = "fruit_based"
ORDER BY fh.total_order DESC