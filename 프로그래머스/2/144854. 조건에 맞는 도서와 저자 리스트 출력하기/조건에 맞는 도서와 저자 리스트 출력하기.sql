SELECT b.book_id,
    a.author_name,
    DATE_FORMAT(b.published_date, "%Y-%m-%d") AS published_date
FROM book b
    JOIN author a on a.author_id = b.author_id
WHERE b.category = "경제"
ORDER BY b.published_date