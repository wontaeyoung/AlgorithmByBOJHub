SELECT ii.item_id,
    ii.item_name
FROM item_info ii JOIN item_tree it
  ON ii.item_id = it.item_id
WHERE it.parent_item_id IS NULL
ORDER BY ii.item_id
