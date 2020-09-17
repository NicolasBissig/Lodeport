# set cooldown for new players
execute as @a unless score @s lp_cooldown matches -100000.. run scoreboard players operation @s lp_cooldown = #lodeport lp_c_charge

# notify players
execute as @a[scores={lp_notify=1..}] if score @s lp_cooldown <= #lodeport lp_c_charge run function lodeport:info/tpready

# execute effects for after teleport
execute as @a[scores={lp_after=1..}] run function lodeport:effects/after_port

# reset cooldown for players that are not crouching/holding a lodestone compass
execute as @a if score @s lp_cooldown <= #lodeport lp_c_charge unless predicate lodeport:validport run scoreboard players operation @s lp_cooldown = #lodeport lp_c_charge

# if the cooldown is higher than charge time decrease by one
execute as @a if score @s lp_cooldown > #lodeport lp_c_charge run scoreboard players remove @s lp_cooldown 1

# if cooldown is in charge range and player is valid for teleport decrease cooldown by one
execute as @a if score @s lp_cooldown <= #lodeport lp_c_charge if predicate lodeport:validport run scoreboard players remove @s lp_cooldown 1

# spawn particles for charging players
execute as @a if score @s lp_cooldown <= #lodeport lp_c_charge at @s if predicate lodeport:validport run particle poof ~ ~0.1 ~ 0.5 1 0.5 0 150

# Store coordinates for teleporting players
execute as @a[scores={lp_cooldown=..0}] run function lodeport:teleport/store_coords

# all ok start teleport
execute as @a[scores={lp_cooldown=..0,lp_ok=1..}] at @s run function lodeport:teleport/start_teleport

# Change dim for players that want to teleport but are in the wrong dimension
execute as @a[scores={lp_cooldown=..0}] at @s run function lodeport:teleport/change_dim