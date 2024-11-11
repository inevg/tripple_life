execute as @a[tag=boogeyman,team=Green] run tag @p add green_to_yellow
execute as @a[tag=green_to_yellow] run scoreboard players set @p ls_health 10
execute as @a[tag=green_to_yellow] run team join Yellow
execute as @a[tag=green_to_yellow] run tag @p remove green_to_yellow
################################################################
execute as @a[tag=boogeyman,team=Yellow] run tag @p add yellow_to_red
execute as @a[tag=yellow_to_red] run scoreboard players set @p ls_health 10
execute as @a[tag=yellow_to_red] run team join Red
execute as @a[tag=yellow_to_red] run tag @p remove yellow_to_red
tag @a[tag=boogeyman] remove boogeyman
