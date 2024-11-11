execute if score @p[tag=soul1] health < @p[tag=soul2] health run scoreboard players operation @p[tag=soul1] health = @p[tag=soul2] health
execute if score @p[tag=soul2] health < @p[tag=soul1] health run scoreboard players operation @p[tag=soul2] health = @p[tag=soul1] health
execute if score @p[tag=soul1] health > @p[tag=soul2] health run scoreboard players operation @p[tag=soul2] health = @p[tag=soul1] health
execute if score @p[tag=soul2] health > @p[tag=soul1] health run scoreboard players operation @p[tag=soul1] health = @p[tag=soul2] health
#execute unless score @p[tag=soul1] health = @p[tag=soul2] health run scoreboard players operation @p[tag=soul1] health = @p[tag=soul2] health
#execute unless score @p[tag=soul2] health = @p[tag=soul1] health run scoreboard players operation @p[tag=soul2] health = @p[tag=soul1] health

#execute unless score @p[tag=soul1] ls_health = @p[tag=soul2] ls_health run scoreboard players operation @p[tag=soul1] ls_health = @p[tag=soul2] ls_health
#execute unless score @p[tag=soul2] ls_health = @p[tag=soul1] ls_health run scoreboard players operation @p[tag=soul2] ls_health = @p[tag=soul1] ls_health


execute if score @p[tag=soul1] health < @p[tag=soul2] health run scoreboard players operation @p[tag=soul1] health = @p[tag=soul2] health
execute if score @p[tag=soul2] health < @p[tag=soul1] health run scoreboard players operation @p[tag=soul2] health = @p[tag=soul1] health
execute if score @p[tag=soul2] health > @p[tag=soul1] health run scoreboard players operation @p[tag=soul1] health = @p[tag=soul2] health
execute if score @p[tag=soul1] health > @p[tag=soul2] health run scoreboard players operation @p[tag=soul2] health = @p[tag=soul1] health



#execute unless score @p[tag=soul1] health = @p[tag=soul2] health run scoreboard players get @p[tag=soul2] health
#execute unless score @p[soul2] health = @p[soul1] health run scoreboard players get @p[soul1] health

#execute unless score @p[tag=soul1] ls_health = @p[tag=soul2] ls_health run scoreboard players get @p[tag=soul2] ls_health
#execute unless score @p[tag=soul2] ls_health = @p[tag=soul1] ls_health run scoreboard players get @p[tag=soul1] ls_health

#execute if score @p[soul2] health > @p[soul1] health run scoreboard players get @p[soul1] health