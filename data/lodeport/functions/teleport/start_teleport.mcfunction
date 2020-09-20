# get and cache the target coordinates 
scoreboard players operation #current lp_X = @s lp_X
scoreboard players operation #current lp_Y = @s lp_Y
scoreboard players operation #current lp_Z = @s lp_Z

# mark this player to be the teleport target
tag @s add lodeport_source

# Summon the teleport target
summon area_effect_cloud ~ ~ ~ {Tags:["lodeporter"]}

# Move the teleport target and teleport the player to it
execute as @e[type=area_effect_cloud,tag=lodeporter,limit=1] at @s run function lodeport:teleport/teleport

# teleporting done, unmark
tag @s remove lodeport_source
tag @s remove lp_toTeleport
tag @s remove lp_ok
tag @s remove lp_dimOK

# set after teleport for effects and the cooldown to the long one
scoreboard players set @s lp_after 1
scoreboard players operation @s lp_cooldown = #lodeport lp_c_cooldown