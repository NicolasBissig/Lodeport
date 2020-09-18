# get and cache the target coordinates 
scoreboard players operation #current lp_X = @s lp_X
scoreboard players operation #current lp_Y = @s lp_Y
scoreboard players operation #current lp_Z = @s lp_Z

# mark this player to be the teleport target
tag @s add lodeport_source

# create the marker and teleport to it
function lodeport:teleport/summon_marker

# teleporting done, unmark
tag @s remove lodeport_source
tag @s remove lp_toTeleport
tag @s remove lp_ok
tag @s remove lp_dimOK

# set after teleport for effects and the cooldown to the long one
scoreboard players set @s lp_after 1
scoreboard players operation @s lp_cooldown = #lodeport lp_c_cooldown