# Global scoreboard objectives are created only once per world.
execute unless data storage farm_life:state initialized run scoreboard objectives add fl_coins dummy
execute unless data storage farm_life:state initialized run scoreboard objectives add fl_count dummy
execute unless data storage farm_life:state initialized run scoreboard objectives add fl_price dummy
execute unless data storage farm_life:state initialized run scoreboard objectives add fl_payment dummy
execute unless data storage farm_life:state initialized run scoreboard objectives add fl_total dummy
execute unless data storage farm_life:state initialized run scoreboard objectives add fl_xp dummy
execute unless data storage farm_life:state initialized run scoreboard objectives add fl_level dummy
execute unless data storage farm_life:state initialized run scoreboard objectives add fl_sold dummy
execute unless data storage farm_life:state initialized run scoreboard objectives add fl_quest_done dummy
execute unless data storage farm_life:state initialized run scoreboard objectives add fl_initialized dummy
execute unless data storage farm_life:state initialized run scoreboard objectives add fl_canbuy dummy
execute unless data storage farm_life:state initialized run data modify storage farm_life:state initialized set value 1b

# Give each player a starting balance exactly once.
execute unless score @s fl_initialized matches 1 run scoreboard players set @s fl_coins 50
execute unless score @s fl_initialized matches 1 run scoreboard players set @s fl_xp 0
execute unless score @s fl_initialized matches 1 run scoreboard players set @s fl_level 1
execute unless score @s fl_initialized matches 1 run scoreboard players set @s fl_sold 0
execute unless score @s fl_initialized matches 1 run scoreboard players set @s fl_quest_done 0
execute unless score @s fl_initialized matches 1 run tellraw @s {"text":"Добро пожаловать в Farm Life! Тебе выдано 50 монет. Используй /farm help.","color":"green"}
scoreboard players set @s fl_initialized 1
