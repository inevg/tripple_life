scoreboard objectives add presents dummy
scoreboard players set @a presents 0
tag @a[tag=!presents_participant] add presents
tag @a[tag=presents] add presents_participant
scoreboard players set @a[tag=presents] presents 1


tellraw @a[tag=presents] {"text":"In one minute you will be recieving a gift. It's very likely that it'll be a lovely one, but you might've been a naughty kid and recieve a bad present like a creeper to the face.","bold":true,"color":"gray"}
schedule function lifesteal:christmass_gimmic/presents_wave1 60s
