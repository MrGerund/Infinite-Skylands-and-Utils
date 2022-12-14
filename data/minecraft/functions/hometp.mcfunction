execute at @a[scores={homeTP=1..}] run scoreboard players add @p[scores={homeTP=1..}] Teleport 1
execute at @a[scores={Teleport=1..}] run scoreboard players set @p[scores={homeTP=1..}] homeTP 0
execute at @a[scores={Teleport=1..}] run scoreboard players add @p[scores={Teleport=1..}] Delay 1
execute at @a[scores={Delay=2}] run clear @p[scores={Delay=2}] minecraft:filled_map 999
execute at @a[scores={Delay=3}] run gamerule keepInventory true
execute at @a[scores={Delay=3}] run gamerule doImmediateRespawn true
execute at @a[scores={Delay=3}] run gamerule showDeathMessages false
execute at @a[scores={Delay=5}] run kill @p[scores={Teleport=1..}]
execute at @a[scores={Delay=8}] run playsound minecraft:block.end_portal.spawn master @p[scores={Delay=8}] ~ ~ ~ 0.7 1.4
execute at @a[scores={Delay=8}] run scoreboard players remove @p[scores={Delay=8}] deathcounter 1
execute at @a[scores={Delay=12..}] run gamerule keepInventory false
execute at @a[scores={Delay=12..}] run gamerule doImmediateRespawn false
execute at @a[scores={Delay=12}] run gamerule showDeathMessages true
execute at @a[scores={Delay=12..}] run scoreboard players set @p[scores={Delay=12..}] Teleport 0
execute at @a[scores={Delay=12..}] run scoreboard players set @p[scores={Delay=12..}] Delay 0
