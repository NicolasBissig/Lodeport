# replace all end_gateways at marked shulkers
execute at @e[type=shulker,nbt={Tags:["lodeporter:1b"]}] run fill ~ ~ ~ ~ ~ ~ air replace end_gateway

# kill marked shulkers
kill @e[type=shulker,nbt={Tags:["lodeporter:1b"]}]