# Sync max health and apply shared health changes between soul1 and soul2
execute as @a[tag=soul1] at @s unless score @s health = #SH sharedHealth run tag @s add changeHealth
execute as @a[tag=soul2] at @s unless score @s health = #SH sharedHealth run tag @s add changeHealth


# Update the shared health if either soul1 or soul2 changes health
execute as @a[tag=soul1,tag=changeHealth] run scoreboard players operation #SH sharedHealth = @s health
execute as @a[tag=soul2,tag=changeHealth] run scoreboard players operation #SH sharedHealth = @s health

# Synchronize the health of soul1 and soul2 to #SH sharedHealth
execute as @a[tag=soul1] run scoreboard players operation @s health = #SH sharedHealth
execute as @a[tag=soul2] run scoreboard players operation @s health = #SH sharedHealth

# Death condition: If one dies, set sharedHealth to 0 to sync death, and remove tags
execute as @a[tag=soul1, scores={health=0..}] run scoreboard players set #SH sharedHealth 0
execute as @a[tag=soul2, scores={health=0..}] run scoreboard players set #SH sharedHealth 0
execute as @a[tag=soul1, scores={health=0}] run tag @s remove soul1
execute as @a[tag=soul2, scores={health=0}] run tag @s remove soul2

# Clear changeHealth tag after syncing
tag @a remove changeHealth



#execute if score @p[tag=soul1] health < @p[tag=soul2] health run scoreboard players operation @p[tag=soul1] health = @p[tag=soul2] health
#execute if score @p[tag=soul2] health < @p[tag=soul1] health run scoreboard players operation @p[tag=soul1] health = @p[tag=soul2] health

#execute if score @p[tag=soul1] health > @p[tag=soul2] health run scoreboard players operation @p[tag=soul2] health = @p[tag=soul1] health
#execute if score @p[tag=soul2] health > @p[tag=soul1] health run scoreboard players operation @p[tag=soul1] health = @p[tag=soul2] health
#execute unless score @p[tag=soul1] health = @p[tag=soul2] health run scoreboard players operation @p[tag=soul1] health = @p[tag=soul2] health
#execute unless score @p[tag=soul2] health = @p[tag=soul1] health run scoreboard players operation @p[tag=soul2] health = @p[tag=soul1] health

#execute unless score @p[tag=soul1] ls_health = @p[tag=soul2] ls_health run scoreboard players operation @p[tag=soul1] ls_health = @p[tag=soul2] ls_health
#execute unless score @p[tag=soul2] ls_health = @p[tag=soul1] ls_health run scoreboard players operation @p[tag=soul2] ls_health = @p[tag=soul1] ls_health


#execute if score @p[tag=soul1] health < @p[tag=soul2] health run scoreboard players operation @p[tag=soul1] health = @p[tag=soul2] health
#execute if score @p[tag=soul2] health < @p[tag=soul1] health run scoreboard players operation @p[tag=soul2] health = @p[tag=soul1] health
#execute if score @p[tag=soul2] health > @p[tag=soul1] health run scoreboard players operation @p[tag=soul1] health = @p[tag=soul2] health
#execute if score @p[tag=soul1] health > @p[tag=soul2] health run scoreboard players operation @p[tag=soul2] health = @p[tag=soul1] health



#execute unless score @p[tag=soul1] health = @p[tag=soul2] health run scoreboard players get @p[tag=soul2] health
#execute unless score @p[soul2] health = @p[soul1] health run scoreboard players get @p[soul1] health

#execute unless score @p[tag=soul1] ls_health = @p[tag=soul2] ls_health run scoreboard players get @p[tag=soul2] ls_health
#execute unless score @p[tag=soul2] ls_health = @p[tag=soul1] ls_health run scoreboard players get @p[tag=soul1] ls_health

#execute if score @p[soul2] health > @p[soul1] health run scoreboard players get @p[soul1] health