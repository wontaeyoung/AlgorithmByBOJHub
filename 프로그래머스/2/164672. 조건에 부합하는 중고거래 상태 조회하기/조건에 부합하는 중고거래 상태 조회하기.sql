SELECT board_id,
    writer_id,
    title,
    price,
    CASE WHEN `status` = "SALE" THEN "판매중"
        WHEN `status` = "RESERVED" THEN "예약중"
        ELSE "거래완료" END AS `status`
FROM used_goods_board
WHERE DATE_FORMAT(created_date, "%y-%m-%d") = "22-10-05"
ORDER BY board_id DESC