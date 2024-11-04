SELECT ugb.title,
    ugb.board_id,
    ugr.reply_id,
    ugr.writer_id,
    ugr.contents,
    DATE_FORMAT(ugr.created_date, "%Y-%m-%d") AS created_date
FROM used_goods_board ugb
JOIN used_goods_reply ugr ON ugr.board_id = ugb.board_id
WHERE YEAR(ugb.created_date) = 2022
    AND MONTH(ugb.created_date) = 10
ORDER BY ugr.created_date,
    ugb.title