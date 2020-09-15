# set cooldown for new players
execute as @a unless score @s lp_cooldown matches -1.. run scoreboard players operation @s lp_cooldown = #lodeport lp_c_charge

# clear old used portals
function lodeport:clear_portals

# notify players
execute as @a[scores={lp_notify=1..}] if score @s lp_cooldown <= #lodeport lp_c_charge run function lodeport:tpready

# execute effects for after teleport
execute as @a[scores={lp_after=1..}] run function lodeport:after_port

# reset cooldown for players that are not crouching/holding a lodestone compass
execute as @a if score @s lp_cooldown <= #lodeport lp_c_charge unless predicate lodeport:validport run scoreboard players operation @s lp_cooldown = #lodeport lp_c_charge

# if the cooldown is higher than charge time decrease by one
execute as @a if score @s lp_cooldown > #lodeport lp_c_charge run scoreboard players remove @s lp_cooldown 1

# if cooldown is in charge range and player is valid for teleport decrease cooldown by one
execute as @a if score @s lp_cooldown <= #lodeport lp_c_charge if predicate lodeport:validport run scoreboard players remove @s lp_cooldown 1

# spawn particles for charging players
execute as @a if score @s lp_cooldown <= #lodeport lp_c_charge at @s if predicate lodeport:validport run particle poof ~ ~0.1 ~ 0.5 1 0.5 0 150 force

# Store coordinates for teleporting players
execute as @a[scores={lp_cooldown=..0}] run function lodeport:store_coords
# spawn the gateway portal
execute as @a[scores={lp_cooldown=..0,lp_ok=1..},predicate=lodeport:in_air] run function lodeport:portal

# set the cooldown to the long cooldown for players that teleported
execute as @a[scores={lp_cooldown=..0,lp_ok=1..}] run scoreboard players operation @s lp_cooldown = #lodeport lp_c_cooldown