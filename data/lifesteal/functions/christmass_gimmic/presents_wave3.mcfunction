
scoreboard players set @r[tag=presents] presents 2
execute as @a[tag=presents,scores={presents=2}] run give @s diamond 2

scoreboard players set @r[tag=presents,scores={presents=1}] presents 3
execute as @a[tag=presents,scores={presents=3}] run setblock ~ ~100 ~ anvil

scoreboard players set @r[tag=presents,scores={presents=1}] presents 4
execute as @a[tag=presents,scores={presents=4}] run scoreboard players add @s ls_health 2

scoreboard players set @r[tag=presents,scores={presents=1}] presents 5
execute as @a[tag=presents,scores={presents=5}] run give @s golden_apple

scoreboard players set @r[tag=presents,scores={presents=1}] presents 6
execute as @a[tag=presents,scores={presents=6}] run give @s tnt 3

scoreboard players set @r[tag=presents,scores={presents=1}] presents 7
execute as @a[tag=presents,scores={presents=7}] run give @s minecraft:potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:5,Amplifier:2,Duration:100},{Id:11,Amplifier:1,Duration:100}],display:{Name:"\"Strong potion\""}}

scoreboard players set @r[tag=presents,scores={presents=1}] presents 8
execute as @a[tag=presents,scores={presents=8}] run give @s ender_pearl

scoreboard players set @r[tag=presents,scores={presents=1}] presents 9
execute as @a[tag=presents,scores={presents=9}] run scoreboard players remove @s ls_health 2

execute as @a[tag=presents,scores={presents=1}] run give @s iron_ingot 12
execute as @a[tag=presents,scores={presents=1}] run give @s golden_carrot 12
execute as @a[tag=presents,scores={presents=1}] run give @s golden_apple 1
execute as @a[tag=presents,scores={presents=1}] run give @s diamond 1

scoreboard players set @a[tag=presents] presents 1

#tellraw @a[tag=presents] {"text":"I hope you got a gift. Next present wave is in 5 minutes ","bold":true,"color":"gray"}
#schedule function lifesteal:christmass_gimmic/presents_wave2 300s

