# play sound
execute at @s run playsound block.beacon.power_select master @a ~ ~ ~
# spawn particles
execute at @s run particle poof ~ ~0.1 ~ 0.5 1 0.5 1 300 force

# finish after port
scoreboard players set @s lp_notify 1
scoreboard players set @s lp_after 0