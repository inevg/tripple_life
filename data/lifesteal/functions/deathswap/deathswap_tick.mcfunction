tellraw @a[scores={ls_death=1..,deathswap=1}] {"text": "You have lost the deathswap","color": "red"}
execute as @a[scores={ls_death=1..,deathswap=1}] run scoreboard players add @a[scores={deathswap=1}] deathswap 1
execute as @a[scores={ls_death=1..,deathswap=1}] run scoreboard players set @s[scores={deathswap=1}] deathswap 0

execute as @a[scores={deathswap=2}] run scoreboard players add @s ls_health 2
tellraw @a[scores={deathswap=2}] {"text": "You have won the deathswap","color": "green"}
execute as @a[scores={deathswap=2}] run tag @a remove ds1
execute as @a[scores={deathswap=2}] run tag @a remove ds2
execute as @a[scores={deathswap=2}] run scoreboard players set @a deathswap 0


