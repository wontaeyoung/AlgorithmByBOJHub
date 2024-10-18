SELECT COUNT(*) AS fish_count,
    fn.fish_name
FROM fish_info fi JOIN fish_name_info fn
    ON fi.fish_type = fn.fish_type
GROUP BY fn.fish_name
ORDER BY fish_count DESC