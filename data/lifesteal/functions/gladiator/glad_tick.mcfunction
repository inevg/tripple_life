execute as @a[scores={ls_death=1..},tag=glad] run tag @a[tag=glad] add glad_point
scoreboard players add @a[tag=glad,tag=glad_point] gladiator_score 1
execute as @a[scores={ls_death=1..},tag=glad] run tag @a[tag=glad] remove glad_point

tag @a[scores={gladiator_score=4},tag=glad] add glad_win
tellraw @a[tag=glad_win] {"text": "You have won the gladiatorship! Therefore you are moving up a color", "color": "green"}
team join Green @a[team=Yellow,tag=glad_win]
team join Yellow @a[team=Red,tag=glad_win]
execute as @a[tag=glad_win] run tag @a remove glad_point
execute as @a[tag=glad_win] run tag @a remove glad
execute as @a[tag=glad_win] run tag @a remove glad_win

tellraw @a[scores={ls_death=1..},tag=glad] {"text": "You have lost the gladiatorship and are out of the game!", "color": "red"}
execute as @a[scores={ls_death=1..},tag=glad] run tag @p remove glad