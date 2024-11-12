execute as @a run function shared_life:gethealth
execute unless score #TEST firstJoin matches 1 run scoreboard players set #MANUAL sharedHealth 20
scoreboard players set #TEST firstJoin 1
execute as @a unless score @s firstJoin matches 1.. run scoreboard players set @s leaveTest 1
scoreboard players set @a firstJoin 1
execute as @a run attribute @s generic.max_health base set 20
function shared_life:absorption
execute if score #TEST deathtest matches 1.. if entity @a[scores={deathtest=1..}] run scoreboard players reset @a deathtest
scoreboard players set #TEST deathtest 0
execute if entity @a[scores={deathtest=1..},gamemode=!spectator,gamemode=!creative] unless score #TEST deathtest matches 1.. run scoreboard players set #MANUAL sharedHealth 0
execute if entity @a[scores={deathtest=1..}] unless score #TEST deathtest matches 1.. run scoreboard players set #TEST deathtest 1
execute as @a[gamemode=!spectator,gamemode=!creative] unless score @s leaveTest matches 1.. unless score @s deathtest2 matches 1.. unless score @s totemTest matches 1.. run tag @s add canChangeHealth
execute as @a[tag=canChangeHealth] unless score @s health = #SH sharedHealth run tag @s add changeHealth
execute as @a[tag=changeHealth] run scoreboard players operation #SH sharedHealth = @s health
function shared_life:totem
execute if score #MANUAL sharedHealth matches 0.. run scoreboard players operation #SH sharedHealth = #MANUAL sharedHealth
execute as @a[gamemode=!spectator,gamemode=!creative] unless score @s totemTest matches 1.. run function shared_life:synchealth
effect clear @a[scores={totemTest=1..}] regeneration
tag @a remove changeHealth
tag @a remove canChangeHealth
scoreboard players reset #MANUAL sharedHealth
execute if entity @a[scores={deathtest=1..}] run scoreboard players set #MANUAL sharedHealth 20
execute if entity @a[scores={totemTest=1..}] run scoreboard players set #MANUAL sharedHealth 20
scoreboard players reset @a totemTest
scoreboard players reset @a deathtest
execute as @e[type=player] if score @s health = #SH sharedHealth run scoreboard players reset @s deathtest2
execute as @a[scores={leaveTest=1..}] if score @s health = #SH sharedHealth run scoreboard players reset @s leaveTest