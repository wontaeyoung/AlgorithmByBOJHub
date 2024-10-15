SELECT SUM(CASE WHEN rarity = "LEGEND" THEN price ELSE 0 END) AS total_price
FROM item_info