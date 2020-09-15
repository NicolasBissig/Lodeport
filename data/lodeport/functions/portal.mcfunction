# spawn a end end_gateway at player position
execute at @s run setblock ~ ~1 ~ end_gateway{Age:2000,ExactTeleport:1b} keep

# modify the gateway data to teleport to the score target
execute at @s store result block ~ ~1 ~ ExitPortal.X int 1 run scoreboard players get @s lp_X 
execute at @s store result block ~ ~1 ~ ExitPortal.Y int 1 run scoreboard players get @s lp_Y 
execute at @s store result block ~ ~1 ~ ExitPortal.Z int 1 run scoreboard players get @s lp_Z 

# summon a shulker marker to remove the gateway later
execute at @s run summon shulker ~ ~1 ~ {Silent:1b,Invulnerable:1b,PortalCooldown:200,DeathLootTable:"nothing",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,AttachFace:1b,Color:15b,Tags:["lodeporter:1b"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:200,ShowParticles:0b}]}

# play a teleport sound for all players, porter himselft won't hear
execute at @s run playsound block.beacon.deactivate master @a ~ ~ ~ 0.75

# mark the player for after port 
scoreboard players set @s lp_after 1