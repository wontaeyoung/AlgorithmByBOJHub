WITH category_table AS (
    SELECT LEFT(product_code, 2) AS category
    FROM product
)

SELECT category,
    COUNT(category) AS products
FROM category_table
GROUP BY category
ORDER BY category