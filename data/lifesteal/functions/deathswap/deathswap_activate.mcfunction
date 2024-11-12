#function lifesteal:deathswap/deathswap_select
scoreboard objectives add deathswap dummy

scoreboard players set @a deathswap 0

tag @a remove ds1
tag @a remove ds2


tag @r add ds1
tag @r add ds2
scoreboard players set @a[tag=ds1] deathswap 1
scoreboard players set @a[tag=ds2] deathswap 1

tellraw @a[tag=ds1] {"text":"You are in a game of deathswap with another player. You will be swapped every 10 minutes","bold":true,"color":"red"}
tellraw @a[tag=ds2] {"text":"You are in a game of deathswap with another player. You will be swapped every 10 minutes","bold":true,"color":"red"}

schedule function lifesteal:deathswap/deathswap_10s 600s