#advancement revoke @a from lifesteal:root
scoreboard players set @a[scores={ls_health=0}] ls_health 10
gamerule doImmediateRespawn true
kill @a[gamemode=spectator]
gamemode survival @a[gamemode=spectator]
gamerule doImmediateRespawn false
scoreboard objectives remove ls_health
scoreboard objectives remove ls_lastHealth
#scoreboard objectives remove ls_firstJoin
#scoreboard objectives remove ls_leave
scoreboard objectives remove ls_killedPlayer
scoreboard objectives remove ls_death
#scoreboard objectives remove ls_completedKills
scoreboard objectives remove ls_tick
#scoreboard objectives remove ls_ban_tick
#scoreboard objectives remove ls_banned
function lifesteal:load
scoreboard players set ban_on_death ls_global_settings 0
#clear @a minecraft:nether_star{Heart:1b} 9999
tellraw @a [{"text":"All players have been reset","bold":true,"color":"green"}]