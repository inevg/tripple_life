execute if score @s ls_health matches 1 run attribute @s generic.max_health base set 2
execute if score @s ls_health matches 2 run attribute @s generic.max_health base set 4
execute if score @s ls_health matches 3 run attribute @s generic.max_health base set 6
execute if score @s ls_health matches 4 run attribute @s generic.max_health base set 8
execute if score @s ls_health matches 5 run attribute @s generic.max_health base set 10
execute if score @s ls_health matches 6 run attribute @s generic.max_health base set 12
execute if score @s ls_health matches 7 run attribute @s generic.max_health base set 14
execute if score @s ls_health matches 8 run attribute @s generic.max_health base set 16
execute if score @s ls_health matches 9 run attribute @s generic.max_health base set 18
execute if score @s ls_health matches 10 run attribute @s generic.max_health base set 20
execute if score @s ls_health matches 11 run attribute @s generic.max_health base set 22
execute if score @s ls_health matches 12 run attribute @s generic.max_health base set 24
execute if score @s ls_health matches 13 run attribute @s generic.max_health base set 26
execute if score @s ls_health matches 14 run attribute @s generic.max_health base set 28
#execute if score @s ls_health matches 15 run attribute @s generic.max_health base set 30
execute if score @s ls_health matches 16 run scoreboard players set @s ls_health 14
execute if score @s ls_health > 14 ls_health run scoreboard players set @s ls_health 14

execute as @a if score @s ls_health matches 2 run attribute @s generic.max_health base set 4
execute as @a if score @s ls_health matches 4 run attribute @s generic.max_health base set 8
execute as @a if score @s ls_health matches 6 run attribute @s generic.max_health base set 12
execute as @a if score @s ls_health matches 8 run attribute @s generic.max_health base set 16
execute as @a if score @s ls_health matches 10 run attribute @s generic.max_health base set 20
execute as @a if score @s ls_health matches 12 run attribute @s generic.max_health base set 24
execute as @a if score @s ls_health matches 14 run attribute @s generic.max_health base set 28
execute as @a if score @s ls_health matches 16 run scoreboard players set @s ls_health 14



# Updates the health
execute unless score @s ls_health = @s ls_lastHealth run effect give @s minecraft:resistance 1 4
execute unless score @s ls_health = @s ls_lastHealth run effect give @s minecraft:instant_damage 1 0
execute unless score @s ls_health = @s ls_lastHealth run effect give @s minecraft:instant_health 1 0

# Sets the last health score to the health score
execute store result score @s ls_lastHealth run scoreboard players get @s ls_health

