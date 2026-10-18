scoreboard players set @s fl_canbuy 0
execute if score @s fl_coins matches 12.. run scoreboard players set @s fl_canbuy 1
execute if score @s fl_canbuy matches 1 run scoreboard players remove @s fl_coins 12
execute if score @s fl_canbuy matches 1 run give @s minecraft:carrot 8
execute if score @s fl_canbuy matches 1 run tellraw @s {"text":"Покупка успешна: 8 морковок.","color":"green"}
execute if score @s fl_canbuy matches 0 run tellraw @s {"text":"Недостаточно монет. Проверь баланс командой /farm balance.","color":"red"}
