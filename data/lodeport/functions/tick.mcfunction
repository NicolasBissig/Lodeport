function lodeport:clear_portals
execute as @a at @a if score @s lp_after matches 1.. run function lodeport:after_port

execute as @a unless predicate lodeport:validport if score @s lp_cooldown matches ..10 run scoreboard players set @s lp_cooldown 10

execute as @a if score @s lp_cooldown matches 11.. run scoreboard players remove @s lp_cooldown 1
execute as @a if predicate lodeport:validport if score @s lp_cooldown matches ..10 run scoreboard players remove @s lp_cooldown 1

execute as @a at @a if predicate lodeport:validport if score @s lp_cooldown matches ..10 run particle poof ~ ~0.1 ~ 0.5 1 0.5 0 150 force

execute as @a at @a if score @s lp_cooldown matches ..0 run function lodeport:store_coords
execute as @a at @a if score @s lp_cooldown matches ..0 if score @s lp_ok matches 1.. run function lodeport:portal

execute as @a at @a if score @s lp_cooldown matches ..0 if score @s lp_ok matches 1.. run scoreboard players set @s lp_cooldown 50