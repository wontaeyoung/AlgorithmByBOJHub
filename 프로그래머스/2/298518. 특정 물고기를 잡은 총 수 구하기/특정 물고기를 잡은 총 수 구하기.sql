SELECT SUM(CASE WHEN fn.fish_name REGEXP("BASS|SNAPPER") THEN 1 ELSE 0 END) AS fish_count
FROM fish_info fi JOIN fish_name_info fn
    USING(fish_type)