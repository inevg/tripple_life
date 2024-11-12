#scoreboard players add tick ls_tick 1
#execute if score tick ls_tick matches 15.. run scoreboard players reset tick ls_tick


# Checks if the player joins for the first time
#execute as @a store success score @s ls_firstJoin run scoreboard players get @s ls_firstJoin



# Resets the players health if the player joins for the first time
#execute as @a[scores={ls_firstJoin=0}] run scoreboard players set @s ls_health 10

function lifesteal:health_check

# Checks if a player has killed another player and then gives him a life




# Checks if a player has been killed and then takes a life from him
execute as @a[scores={ls_death=1..}, tag=first_death] run scoreboard players remove @s ls_health 6
tellraw @a[scores={ls_death=1..}, tag=first_death] {"text":"You are the first person to be killed and you will be punished by losing 2 extra hearts","color":"red"}
execute as @a[scores={ls_death=1..}, tag=first_death] run tag @a remove first_death

execute as @a[scores={ls_death=1..},tag=!boogey_victim, tag=!first_death] run scoreboard players remove @s ls_health 4



#function lifesteal:boogey/boogey_tick
execute as @a[scores={ls_killedPlayer=1..,}, tag=boogeyman] run scoreboard players add @s ls_health 4
execute as @a[scores={ls_killedPlayer=1..,}, tag=boogeyman] run tag @a add boogey_victim
execute as @a[scores={ls_killedPlayer=1..,}, tag=boogeyman] run tag @p remove boogeyman
execute as @a[scores={ls_killedPlayer=1..}] run effect give @p resistance 5 4
execute as @a[scores={ls_killedPlayer=1..}] run effect give @p instant_damage 1 0
execute as @a[scores={ls_killedPlayer=1..}] run effect give @p instant_health 1 0


execute as @a[scores={ls_death=1..},tag=boogey_victim] run scoreboard players remove @p lives 1
execute as @a[scores={ls_death=1..},tag=boogey_victim] unless score @p ls_health > 10 ls_health run scoreboard players set @s ls_health 10
execute as @a[scores={ls_death=1..},tag=boogey_victim] run scoreboard players remove @p ls_death 1

#--------------------------------------------------------------------------------------------------------------------------------


tag @a remove boogey_victim


function lifesteal:deathswap/deathswap_tick
#tellraw @a[scores={ls_death=1..,deathswap=1}] {"text": "You have lost the deathswap","color": "red"}
#execute as @a[scores={ls_death=1..,deathswap=1}] run scoreboard players add @a[scores={deathswap=1..}] deathswap 1
#execute as @a[scores={ls_death=1..,deathswap=1}] run scoreboard players set @s[scores={deathswap=1..}] deathswap 0

#execute as @a[scores={deathswap=2..}] run scoreboard players add @s ls_health 2
#tellraw @a[scores={deathswap=2..}] {"text": "You have won the deathswap","color": "green"}
#execute as @a[scores={deathswap=2..}] run tag @a remove ds1
#execute as @a[scores={deathswap=2..}] run tag @a remove ds2
#execute as @a[scores={deathswap=2..}] run scoreboard players set @a deathswap 0





function lifesteal:gladiator/glad_tick
#execute as @a[scores={ls_death=1..},tag=glad] run tag @a[tag=glad] add glad_point
#scoreboard players add @a[tag=glad,tag=glad_point] gladiator_score 1
#execute as @a[scores={ls_death=1..},tag=glad] run tag @a[tag=glad] remove glad_point

#tag @a[scores={gladiator_score=4..},tag=glad] add glad_win
#execute as @a[scores={gladiator_score=4..},tag=glad] run scoreboard players set @a gladiator_score 0
#tellraw @a[tag=glad_win] {"text": "You have won the gladiatorship! Therefore you are moving up a color", "color": "green"}
#team join Green @a[team=Yellow,tag=glad_win]
#team join Yellow @a[team=Red,tag=glad_win]
#execute as @a[tag=glad_win] run tag @a remove glad_point
#execute as @a[tag=glad_win] run tag @a remove glad
#execute as @a[tag=glad_win] run tag @a remove glad_win

#tellraw @a[scores={ls_death=1..},tag=glad] {"text": "You have lost the gladiatorship and are out of the game!", "color": "red"}
#execute as @a[scores={ls_death=1..},tag=glad] run tag @p remove glad

function lifesteal:mlg/mlg_tick
#scoreboard players set @a[scores={ls_death=1..},tag=mlg] mlg_score 0
#tag @a[scores={ls_death=1..},tag=mlg] remove mlg_pr1
#tag @a[scores={ls_death=1..},tag=mlg] remove mlg_pr2
#tag @a[scores={ls_death=1..},tag=mlg] remove mlg_pr3
#tag @a[scores={ls_death=1..},tag=mlg] remove mlg


#check kill
execute as @a[scores={ls_killedPlayer=1..},tag=!glad,tag=!boogeyman] run scoreboard players add @s ls_health 2
execute as @a[scores={ls_killedPlayer=1..}] run effect give @p resistance 1 4
execute as @a[scores={ls_killedPlayer=1..}] run effect give @p instant_damage 1 0
execute as @a[scores={ls_killedPlayer=1..}] run effect give @p instant_health 1 0





#function lifesteal:linked/link_tick



execute if score @p lives = 3 lives run team join Green
execute if score @p lives = 2 lives run team join Yellow
execute if score @p lives = 1 lives run team join Red
execute if score @p lives = 0 lives run team join Dead

#--------------------------------------------------------------------------------------------------------------------------------
#execute if score @s ls_health matches ..0 run gamemode spectator @s
execute as @a[scores={ls_death=1..}] unless score @p ls_health > 0 ls_health run scoreboard players remove @p lives 1
execute as @a[scores={ls_death=1..}] unless score @p ls_health > 0 ls_health run scoreboard players set @p ls_health 10
#execute as @a[scores={ls_death=1.., ls_health=0.., lives=3}] run scoreboard players remove @p lives 1
#execute as @a[scores={ls_death=1.., ls_health=-2.., lives=3}] run scoreboard players remove @p lives 1
#execute as @a[scores={ls_death=1.., ls_health=-4.., lives=3}] run scoreboard players remove @p lives 1
#execute as @a[scores={ls_death=1.., ls_health=-6.., lives=3}] run scoreboard players remove @p lives 1
#execute as @a[scores={ls_death=1.., ls_health=0.., lives=2}] run scoreboard players set @p ls_health 10
#execute as @a[scores={ls_death=1.., ls_health=-2.., lives=2}] run scoreboard players set @p ls_health 10
#execute as @a[scores={ls_death=1.., ls_health=-4.., lives=2}] run scoreboard players set @p ls_health 10
#execute as @a[scores={ls_death=1.., ls_health=-6.., lives=2}] run scoreboard players set @p ls_health 10

#--------------------------------------------------------------------------------------------------------------------------------
#execute as @a[scores={ls_death=1.., ls_health=0.., lives=2}] run scoreboard players remove @p lives 1
#execute as @a[scores={ls_death=1.., ls_health=-2.., lives=2}] run scoreboard players remove @p lives 1
#execute as @a[scores={ls_death=1.., ls_health=-4.., lives=2}] run scoreboard players remove @p lives 1
#execute as @a[scores={ls_death=1.., ls_health=-6.., lives=2}] run scoreboard players remove @p lives 1
#execute as @a[scores={ls_death=1.., ls_health=0.., lives=1}] run scoreboard players set @p ls_health 10
#execute as @a[scores={ls_death=1.., ls_health=-2.., lives=1}] run scoreboard players set @p ls_health 10
#execute as @a[scores={ls_death=1.., ls_health=-4.., lives=1}] run scoreboard players set @p ls_health 10
#execute as @a[scores={ls_death=1.., ls_health=-6.., lives=1}] run scoreboard players set @p ls_health 10

#--------------------------------------------------------------------------------------------------------------------------------
#execute as @a[scores={ls_death=1.., ls_health=0.., lives=1}] run scoreboard players remove @p lives 1
#execute as @a[scores={ls_death=1.., ls_health=-2.., lives=1}] run scoreboard players remove @p lives 1
#execute as @a[scores={ls_death=1.., ls_health=-4.., lives=1}] run scoreboard players remove @p lives 1
#execute as @a[scores={ls_death=1.., ls_health=-6.., lives=1}] run scoreboard players remove @p lives 1
#execute as @a[scores={ls_death=1.., ls_health=0.., lives=0}] run tag @p add dead
#execute as @a[scores={ls_death=1.., ls_health=-2.., lives=0}] run tag @p add dead
#execute as @a[scores={ls_death=1.., ls_health=-4.., lives=0}] run tag @p add dead
#execute as @a[scores={ls_death=1.., ls_health=-6.., lives=0}] run tag @p add dead
#execute as @a[scores={ls_death=1.., ls_health=0.., lives=0}] run scoreboard players set @p ls_health 10
#execute as @a[scores={ls_death=1.., ls_health=-2.., lives=0}] run scoreboard players set @p ls_health 10
#execute as @a[scores={ls_death=1.., ls_health=-4.., lives=0}] run scoreboard players set @p ls_health 10
#execute as @a[scores={ls_death=1.., ls_health=-6.., lives=0}] run scoreboard players set @p ls_health 10

execute as @a[tag=dead] run title @p title {"text":"You ran out of hearts!","bold":true,"color":"red"}
execute as @a[tag=dead] run tag @p remove dead


# Updates the player health bar
#execute as @a run function lifesteal:health_check
#execute store result score @a[scores={ls_health=..0}] ls_ban_tick run scoreboard players get tick ls_tick
#execute as @a[scores={ls_health=..0}] if score @s ls_ban_tick = tick ls_tick run scoreboard players set @s ls_banned 1
#execute as @a unless score @s ls_ban_tick = tick ls_tick run scoreboard players set @s ls_banned 0
#execute if score ban_on_death ls_global_settings matches 1 run function lifesteal:death_ban
#execute unless score ban_on_death ls_global_settings matches 1 run gamemode spectator @a[scores={ls_health=..0}]

# Resets all of the scores
scoreboard players set @a ls_killedPlayer 0
scoreboard players set @a ls_death 0
#scoreboard players set @a ls_leave 0
function lifesteal:health_check
