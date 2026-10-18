tellraw @s {"text":"=== МОЯ ФЕРМА ===","color":"green","bold":true}
tellraw @s [{"text":"Монеты: ","color":"gold"},{"score":{"name":"@s","objective":"fl_coins"}}]
tellraw @s [{"text":"Уровень фермера: ","color":"yellow"},{"score":{"name":"@s","objective":"fl_level"}}]
tellraw @s [{"text":"Опыт: ","color":"aqua"},{"score":{"name":"@s","objective":"fl_xp"}}]
tellraw @s [{"text":"Всего продано предметов: ","color":"yellow"},{"score":{"name":"@s","objective":"fl_sold"}}]
function farm_life:quest
