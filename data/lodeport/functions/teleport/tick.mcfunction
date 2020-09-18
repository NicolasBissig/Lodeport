# Store coordinates for teleporting players
#execute as @a[scores={lp_cooldown=..0}] run function lodeport:teleport/store_coords
execute as @a[tag=lp_toTeleport] at @s run function lodeport:teleport/store_coords

execute as @a[tag=lp_toTeleport] run function lodeport:teleport/check_dim

# all ok start teleport
execute as @a[tag=lp_toTeleport,tag=lp_ok,tag=lp_dimOk] at @s run function lodeport:teleport/start_teleport

# Change dim for players that want to teleport but are in the wrong dimension
execute as @a[tag=lp_toTeleport,tag=lp_ok,tag=!lp_dimOk] at @s run function lodeport:teleport/change_dim