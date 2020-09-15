# --- objectives ---
scoreboard objectives add lp_cooldown dummy
scoreboard objectives add lp_ok dummy
scoreboard objectives add lp_dim dummy
scoreboard objectives add lp_lodedim dummy
scoreboard objectives add lp_after dummy
scoreboard objectives add lp_notify dummy
scoreboard objectives add lp_X dummy
scoreboard objectives add lp_Y dummy
scoreboard objectives add lp_Z dummy

# --- defaults ---
scoreboard players set @a lp_ok 0
scoreboard players set @a lp_after 0
scoreboard players set @a lp_dim 0
scoreboard players set @a lp_lodedim 0
scoreboard players set @a lp_X 0
scoreboard players set @a lp_Y 0
scoreboard players set @a lp_Z 0

# --- finish install ---
data modify storage lodeport isInstalled set value 1b