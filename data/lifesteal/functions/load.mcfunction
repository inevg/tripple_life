scoreboard objectives add ls_health dummy
scoreboard players set @a ls_health 10
scoreboard objectives add ls_lastHealth dummy

#scoreboard objectives add ls_leave minecraft.custom:minecraft.leave_game

scoreboard objectives add ls_killedPlayer playerKillCount
scoreboard objectives add ls_death deathCount

#scoreboard objectives add ls_saved_selected_heart_item dummy

scoreboard objectives add last_tick_heart_check dummy

#scoreboard objectives add exclf trigger
scoreboard objectives add ls_tick dummy

scoreboard objectives add ls_global_settings dummy
scoreboard objectives add lives dummy

team add DG
team modify DG color dark_green
team add Green
team modify Green color green
team add Yellow
team modify Yellow color yellow
team add Red
team modify Red color red
team add Dead
team modify Dead color gray


forceload add 0 0

gamerule keepInventory true

#scoreboard objectives add gladiator dummy

scoreboard objectives add health health