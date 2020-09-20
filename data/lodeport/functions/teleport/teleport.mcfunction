# write the coordinates into the marker -> marker teleports
execute store result entity @s Pos[0] double 1 run scoreboard players get #current lp_X
execute store result entity @s Pos[1] double 1 run scoreboard players get #current lp_Y
execute store result entity @s Pos[2] double 1 run scoreboard players get #current lp_Z

# teleport the player to the marker, marker will die
execute at @s run tp @a[tag=lodeport_source,limit=1] ~0.5 ~ ~0.5
kill @s