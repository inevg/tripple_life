execute as @a[scores={ls_killedPlayer=1..,}, tag=boogeyman] run scoreboard players add @s ls_health 4
execute as @a[scores={ls_killedPlayer=1..,}, tag=boogeyman] run tag @a add boogey_victim
execute as @a[scores={ls_killedPlayer=1..,}, tag=boogeyman] run tag remove remove boogeyman
execute as @a[scores={ls_killedPlayer=1..}] run effect give @p resistance 1 4
execute as @a[scores={ls_killedPlayer=1..}] run effect give @p instant_damage 1 0
execute as @a[scores={ls_killedPlayer=1..}] run effect give @p instant_health 1 0


execute as @a[scores={ls_death=1..},tag=boogey_victim,team=Yellow] run tag @p add yellow_to_red
execute as @a[tag=yellow_to_red] run scoreboard players set @p ls_health 10
execute as @a[tag=yellow_to_red] run team join Red
execute as @a[tag=yellow_to_red] run tag @p remove yellow_to_red
################################################################
execute as @a[scores={ls_death=1..},tag=boogey_victim,team=Green] run tag @p add green_to_yellow
execute as @a[tag=green_to_yellow] run scoreboard players set @p ls_health 10
execute as @a[tag=green_to_yellow] run team join Yellow
execute as @a[tag=green_to_yellow] run tag @p remove green_to_yellow

tag @a remove boogey_victim