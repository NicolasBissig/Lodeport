# Check the target dimension and teleport the player to it
execute if score @s lp_lodedim matches 19 run function lodeport:dimensions/to_overworld
execute if score @s lp_lodedim matches 20 run function lodeport:dimensions/to_nether
execute if score @s lp_lodedim matches 17 run function lodeport:dimensions/to_end