scoreboard objectives add gladiator dummy
scoreboard objectives add gladiator_match dummy
scoreboard objectives add gladiator_score dummy

tag @r[scores={lives = 2},tag=!glad] add glad
tag @r[scores={lives = 2},tag=!glad] add glad
tag @r[scores={lives = 2},tag=!glad] add glad
tag @r[scores={lives = 2},tag=!glad] add glad
tag @r[scores={lives = 2},tag=!glad] add glad
scoreboard players set @a[tag=glad] gladiator 1
scoreboard players set @a[scores={gladiator=1}] gladiator_match -1
execute as @a[scores={gladiator=1}] run scoreboard players add @a[scores={gladiator=1}] gladiator_match 1
tellraw @a[tag=glad] {"text":"You are chosen to be a gladiator","bold":true,"color":"red"}
tellraw @a[tag=glad] {"text":"There are four other players you will have to fight off for the title of the greatest. You will be awarded an extra life. You will not recieve extra hearts on any kills untill the gladiatorship is over","bold":true,"color":"gray"}
function lifesteal:gladiator/glad_tick