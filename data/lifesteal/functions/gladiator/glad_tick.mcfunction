tellraw @a[scores={ls_death=1..},tag=glad] {"text": "You have lost the gladiatorship and are out of the game!", "color": "red"}
execute as @a[scores={ls_death=1..},tag=glad] run tellraw @a {"text": "A gladiator has died!", "color": "red", "bold": true}
execute as @a[scores={ls_death=1..},tag=glad] run scoreboard players add @a[tag=glad] gladiator_score 1
execute as @a[scores={ls_death=1..},tag=glad] run scoreboard players set @s gladiator 0
execute as @a[scores={ls_death=1..},tag=glad] run scoreboard players set @s gladiator_score 0
execute as @a[scores={ls_death=1..},tag=glad] run scoreboard players remove @s lives 1
execute as @a[scores={ls_death=1..},tag=glad] run tag @s add glad_dead
execute as @a[scores={ls_death=1..},tag=glad] run tag @s remove glad
execute as @a[scores={ls_death=1..},tag=glad_dead] run scoreboard players set @s ls_death 0
tag @a[tag=glad_dead] remove glad_dead

#execute if score @p gladiator_score = @p gladiator_match run tag @p add glad_win
execute if score @s gladiator_score = 4 gladiator_score run tag @s add glad_win
execute as @a[scores={gladiator_score=4}] run tag @s add glad_win
#tag @a[scores={gladiator_score=4},tag=glad,tag=!glad_win] add glad_win

#tag @a[scores={gladiator_score = gladiator_match}] add glad_win
tellraw @a[tag=glad_win] {"text": "You have won the gladiatorship! Therefore you are moving up a color", "color": "green"}
execute as @a[tag=glad_win] run scoreboard players add @s lives 1
execute as @a[tag=glad_win] run scoreboard players set @a gladiator_score 0
execute as @a[tag=glad_win] run scoreboard players set @a gladiator 0
execute as @a[tag=glad_win] run scoreboard players set @a gladiator_match 999
execute as @a[tag=glad_win] run tag @a remove glad
execute as @a[tag=glad_win] run tag @a remove glad_win


