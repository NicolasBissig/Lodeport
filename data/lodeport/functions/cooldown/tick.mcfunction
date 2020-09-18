# set cooldown for new players
execute as @a unless score @s lp_cooldown matches -100000.. run scoreboard players operation @s lp_cooldown = #lodeport lp_c_charge

# reset cooldown for players that are not crouching/holding a lodestone compass
execute as @a if score @s lp_cooldown <= #lodeport lp_c_charge unless predicate lodeport:validport run scoreboard players operation @s lp_cooldown = #lodeport lp_c_charge

# if the cooldown is higher than charge time decrease by one
execute as @a if score @s lp_cooldown > #lodeport lp_c_charge run scoreboard players remove @s lp_cooldown 1

# if cooldown is in charge range and player is valid for teleport decrease cooldown by one
execute as @a if score @s lp_cooldown <= #lodeport lp_c_charge if predicate lodeport:validport run scoreboard players remove @s lp_cooldown 1

tag @a[scores={lp_cooldown=..0}] add lp_toTeleport