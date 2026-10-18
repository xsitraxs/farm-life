execute if score @s fl_quest_done matches 1 run tellraw @s {"text":"Задание выполнено! Ты уже получил бонус 100 монет.","color":"green"}
execute unless score @s fl_quest_done matches 1 run tellraw @s [{"text":"Задание: продай 64 предмета урожая. Сейчас продано: ","color":"gold"},{"score":{"name":"@s","objective":"fl_sold"}},{"text":" / 64. Награда: 100 монет."}]
