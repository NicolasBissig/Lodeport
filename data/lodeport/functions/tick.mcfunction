function lodeport:cooldown/tick

# notify players
execute as @a[scores={lp_notify=1..}] if score @s lp_cooldown <= #lodeport lp_c_charge run function lodeport:info/tpready

# execute effects for after teleport
execute as @a[scores={lp_after=1..}] run function lodeport:effects/after_port

# spawn particles for charging players
execute as @a if score @s lp_cooldown <= #lodeport lp_c_charge at @s if predicate lodeport:validport run particle poof ~ ~0.1 ~ 0.5 1 0.5 0 150

function lodeport:teleport/tick