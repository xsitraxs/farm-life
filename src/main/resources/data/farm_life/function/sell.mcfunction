# Sells harvested products from the player's inventory. Seeds are deliberately not sold.
scoreboard players set @s fl_total 0
execute store result score @s fl_count run clear @s minecraft:wheat 0
execute if score @s fl_count matches 1.. run clear @s minecraft:wheat
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment = @s fl_count
execute if score @s fl_count matches 1.. run scoreboard players set #wheat fl_price 3
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment *= #wheat fl_price
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_coins += @s fl_payment
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_total += @s fl_count
execute store result score @s fl_count run clear @s minecraft:carrot 0
execute if score @s fl_count matches 1.. run clear @s minecraft:carrot
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment = @s fl_count
execute if score @s fl_count matches 1.. run scoreboard players set #carrot fl_price 2
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment *= #carrot fl_price
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_coins += @s fl_payment
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_total += @s fl_count
execute store result score @s fl_count run clear @s minecraft:potato 0
execute if score @s fl_count matches 1.. run clear @s minecraft:potato
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment = @s fl_count
execute if score @s fl_count matches 1.. run scoreboard players set #potato fl_price 2
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment *= #potato fl_price
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_coins += @s fl_payment
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_total += @s fl_count
execute store result score @s fl_count run clear @s minecraft:beetroot 0
execute if score @s fl_count matches 1.. run clear @s minecraft:beetroot
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment = @s fl_count
execute if score @s fl_count matches 1.. run scoreboard players set #beetroot fl_price 2
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment *= #beetroot fl_price
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_coins += @s fl_payment
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_total += @s fl_count
execute store result score @s fl_count run clear @s minecraft:pumpkin 0
execute if score @s fl_count matches 1.. run clear @s minecraft:pumpkin
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment = @s fl_count
execute if score @s fl_count matches 1.. run scoreboard players set #pumpkin fl_price 8
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment *= #pumpkin fl_price
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_coins += @s fl_payment
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_total += @s fl_count
execute store result score @s fl_count run clear @s minecraft:melon_slice 0
execute if score @s fl_count matches 1.. run clear @s minecraft:melon_slice
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment = @s fl_count
execute if score @s fl_count matches 1.. run scoreboard players set #melon fl_price 1
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment *= #melon fl_price
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_coins += @s fl_payment
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_total += @s fl_count
execute store result score @s fl_count run clear @s minecraft:sugar_cane 0
execute if score @s fl_count matches 1.. run clear @s minecraft:sugar_cane
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment = @s fl_count
execute if score @s fl_count matches 1.. run scoreboard players set #sugar_cane fl_price 2
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment *= #sugar_cane fl_price
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_coins += @s fl_payment
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_total += @s fl_count
execute store result score @s fl_count run clear @s minecraft:sweet_berries 0
execute if score @s fl_count matches 1.. run clear @s minecraft:sweet_berries
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment = @s fl_count
execute if score @s fl_count matches 1.. run scoreboard players set #berries fl_price 3
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment *= #berries fl_price
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_coins += @s fl_payment
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_total += @s fl_count
execute store result score @s fl_count run clear @s minecraft:cocoa_beans 0
execute if score @s fl_count matches 1.. run clear @s minecraft:cocoa_beans
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment = @s fl_count
execute if score @s fl_count matches 1.. run scoreboard players set #cocoa fl_price 4
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment *= #cocoa fl_price
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_coins += @s fl_payment
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_total += @s fl_count
execute store result score @s fl_count run clear @s minecraft:egg 0
execute if score @s fl_count matches 1.. run clear @s minecraft:egg
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment = @s fl_count
execute if score @s fl_count matches 1.. run scoreboard players set #egg fl_price 1
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_payment *= #egg fl_price
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_coins += @s fl_payment
execute if score @s fl_count matches 1.. run scoreboard players operation @s fl_total += @s fl_count
execute if score @s fl_total matches 1.. run scoreboard players operation @s fl_xp += @s fl_total
execute if score @s fl_total matches 1.. run scoreboard players operation @s fl_sold += @s fl_total
execute if score @s fl_xp matches 100..249 run scoreboard players set @s fl_level 2
execute if score @s fl_xp matches 250..499 run scoreboard players set @s fl_level 3
execute if score @s fl_xp matches 500..999 run scoreboard players set @s fl_level 4
execute if score @s fl_xp matches 1000.. run scoreboard players set @s fl_level 5
execute if score @s fl_sold matches 64.. unless score @s fl_quest_done matches 1 run tellraw @s {"text":"Задание выполнено! Бонус: 100 монет.","color":"gold","bold":true}
execute if score @s fl_sold matches 64.. unless score @s fl_quest_done matches 1 run scoreboard players add @s fl_coins 100
execute if score @s fl_sold matches 64.. unless score @s fl_quest_done matches 1 run scoreboard players set @s fl_quest_done 1
tellraw @s [{"text":"Продажа завершена. Предметов продано: ","color":"green"},{"score":{"name":"@s","objective":"fl_total"}},{"text":". Баланс: "},{"score":{"name":"@s","objective":"fl_coins"}},{"text":" монет."}]
execute if score @s fl_total matches 0 run tellraw @s {"text":"В инвентаре нет продукции для продажи. Семена не продаются.","color":"red"}
