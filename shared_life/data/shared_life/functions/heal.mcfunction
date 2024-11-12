scoreboard players operation @s healthDifference = #SH sharedHealth
scoreboard players operation @s healthDifference -= @s health
scoreboard players operation @s newhealth = @s health
scoreboard players operation @s newhealth += @s healthDifference
execute if score @s newhealth matches 1 run attribute @s generic.max_health base set 1
execute if score @s newhealth matches 2 run attribute @s generic.max_health base set 2
execute if score @s newhealth matches 3 run attribute @s generic.max_health base set 3
execute if score @s newhealth matches 4 run attribute @s generic.max_health base set 4
execute if score @s newhealth matches 5 run attribute @s generic.max_health base set 5
execute if score @s newhealth matches 6 run attribute @s generic.max_health base set 6
execute if score @s newhealth matches 7 run attribute @s generic.max_health base set 7
execute if score @s newhealth matches 8 run attribute @s generic.max_health base set 8
execute if score @s newhealth matches 9 run attribute @s generic.max_health base set 9
execute if score @s newhealth matches 10 run attribute @s generic.max_health base set 10
execute if score @s newhealth matches 11 run attribute @s generic.max_health base set 11
execute if score @s newhealth matches 12 run attribute @s generic.max_health base set 12
execute if score @s newhealth matches 13 run attribute @s generic.max_health base set 13
execute if score @s newhealth matches 14 run attribute @s generic.max_health base set 14
execute if score @s newhealth matches 15 run attribute @s generic.max_health base set 15
execute if score @s newhealth matches 16 run attribute @s generic.max_health base set 16
execute if score @s newhealth matches 17 run attribute @s generic.max_health base set 17
execute if score @s newhealth matches 18 run attribute @s generic.max_health base set 18
execute if score @s newhealth matches 19 run attribute @s generic.max_health base set 19
execute if score @s newhealth matches 20 run attribute @s generic.max_health base set 20
effect give @s instant_health 1 252 true