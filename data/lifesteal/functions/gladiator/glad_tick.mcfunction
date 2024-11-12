tellraw @a[scores={ls_death=1..},tag=glad] {"text": "You have lost the gladiatorship and are out of the game!", "color": "red"}
tellraw @a {"text": "A gladiator has died!", "color": "red", "bold": true}
execute as @a[scores={ls_death=1..},tag=glad] run scoreboard players add @a[tag=glad] gladiator_score 1
execute as @a[scores={ls_death=1..},tag=glad] run scoreboard players set @p gladiator 0
execute as @a[scores={ls_death=1..},tag=glad] run scoreboard players set @p gladiator_score 0
execute as @a[scores={ls_death=1..},tag=glad] run tag @p remove glad

execute if score @p gladiator_score = @p gladiator_match run tag @p add glad_win
#execute if score @p gladiator_score = 4 gladiator_score run tag @p add glad_win

#tag @a[scores={gladiator_score = gladiator_match}] add glad_win
tellraw @a[tag=glad_win] {"text": "You have won the gladiatorship! Therefore you are moving up a color", "color": "green"}
execute as @a[tag=glad_win] unless score @p lives = 3 lives run scoreboard players add @p lives 1
execute as @a[tag=glad_win] run scoreboard players set @a gladiator_score 0
execute as @a[tag=glad_win] run scoreboard players set @a gladiator 0
execute as @a[tag=glad_win] run scoreboard players set @a gladiator_match 999
execute as @a[tag=glad_win] run tag @a remove glad
execute as @a[tag=glad_win] run tag @a remove glad_win


