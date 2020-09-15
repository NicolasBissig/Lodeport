tellraw @s ["",{"text":"[Lodeport]","color":"gold"},{"text":" Teleport "},{"text":"ready","color":"green"},{"text":"!"}]
execute at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 0.5
scoreboard players set @s lp_notify 0