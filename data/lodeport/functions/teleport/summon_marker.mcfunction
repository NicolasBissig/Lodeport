# Summon the teleport target
summon area_effect_cloud ~ ~ ~ {Tags:["lodeporter"]}

# Move the teleport target and teleport the player to it
execute as @e[type=area_effect_cloud,tag=lodeporter,limit=1] at @s run function lodeport:teleport/teleport