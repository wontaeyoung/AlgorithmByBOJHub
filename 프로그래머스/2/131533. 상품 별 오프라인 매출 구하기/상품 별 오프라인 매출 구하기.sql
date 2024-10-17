SELECT p.product_code,
    p.price * SUM(o.sales_amount) AS sales
FROM product p
    JOIN offline_sale o ON o.product_id = p.product_id
GROUP BY p.product_code
ORDER BY sales DESC,
    p.product_code