execute as @a run function shared_life:gethealth
execute as @s[gamemode=!spectator,gamemode=!creative] run scoreboard players operation #SH sharedHealth = @s health
execute as @a[gamemode=!spectator,gamemode=!creative] unless score @s totemTest matches 1.. run function shared_life:synchealth
advancement revoke @s only shared_life:damage