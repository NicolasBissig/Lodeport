# check if player is holding a lodestone tracked compass (has x position at least)
scoreboard players set @s lp_ok 0
execute store success score @s lp_ok run data get entity @s SelectedItem{}.tag{}.LodestonePos{}.X

# compare Dimensions of player and compass
execute store result score @s lp_dim run data get entity @s Dimension
execute store result score @s lp_lodedim run data get entity @s SelectedItem{}.tag{}.LodestoneDimension
execute unless score @s lp_dim = @s lp_lodedim run scoreboard players set @s lp_ok 0

# store LodestonePos in player score
execute store result score @s lp_X run data get entity @s SelectedItem{}.tag{}.LodestonePos{}.X
execute store result score @s lp_Y run data get entity @s SelectedItem{}.tag{}.LodestonePos{}.Y
# add one to teleport ontop the lodestone
scoreboard players add @s lp_Y 1
execute store result score @s lp_Z run data get entity @s SelectedItem{}.tag{}.LodestonePos{}.Z