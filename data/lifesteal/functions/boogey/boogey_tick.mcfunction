execute as @a[scores={ls_killedPlayer=1..,}, tag=boogeyman] run scoreboard players add @s ls_health 4
execute as @a[scores={ls_killedPlayer=1..,}, tag=boogeyman] run tag @a add boogey_victim
execute as @a[scores={ls_killedPlayer=1..,}, tag=boogeyman] run tag @s remove boogey_victim
execute as @a[scores={ls_killedPlayer=1..,}, tag=boogeyman] run tag @s remove boogeyman
execute as @a[scores={ls_killedPlayer=1..}] run effect give @p resistance 5 4
execute as @a[scores={ls_killedPlayer=1..}] run effect give @p instant_damage 1 0
execute as @a[scores={ls_killedPlayer=1..}] run effect give @p instant_health 1 0


execute as @a[scores={ls_death=1..},tag=boogey_victim] run scoreboard players remove @s lives 1
execute as @a[scores={ls_death=1..},tag=boogey_victim] unless score @p ls_health > 10 ls_health run scoreboard players set @s ls_health 10
execute as @a[scores={ls_death=1..},tag=boogey_victim] run scoreboard players remove @s ls_death 1

tag @a remove boogey_victim