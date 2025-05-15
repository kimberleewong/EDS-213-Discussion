-- GOAL: I want to show the distribution of the top ten colors that are used in the theme: ninjago. 
    ---theme id: 435

-- Get the top 10 colors used in Ninjago theme sets
SELECT colors.name AS color_name, '#' || colors.rgb as color_rgb,
        COUNT(*) AS color_count
    FROM inventory_parts
JOIN inventories ON inventory_parts.inventory_id = inventories.id
JOIN sets ON inventories.set_num = sets.set_num
JOIN colors ON inventory_parts.color_id = colors.id
WHERE sets.theme_id = 435 -- Ninjago theme ID
    GROUP BY colors.name, colors.rgb
ORDER BY 
    color_count DESC
LIMIT 10;