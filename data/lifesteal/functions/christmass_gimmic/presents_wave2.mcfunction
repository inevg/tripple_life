
scoreboard players set @r[tag=presents] presents 2
execute as @a[tag=presents,scores={presents=2}] run give @s diamond 3

scoreboard players set @r[tag=presents,scores={presents=1}] presents 3
execute as @a[tag=presents,scores={presents=3}] run setblock ~ ~100 ~ anvil

scoreboard players set @r[tag=presents,scores={presents=1}] presents 4
execute as @a[tag=presents,scores={presents=4}] run summon creeper ~5 ~3 ~

scoreboard players set @r[tag=presents,scores={presents=1}] presents 5
execute as @a[tag=presents,scores={presents=5}] run give @s golden_apple

scoreboard players set @r[tag=presents,scores={presents=1}] presents 6
execute as @a[tag=presents,scores={presents=6}] run summon zombie ~-5 1 ~
execute as @a[tag=presents,scores={presents=6}] run summon zombie ~1 1 ~-5
execute as @a[tag=presents,scores={presents=6}] run summon skeleton ~-5 1 ~
execute as @a[tag=presents,scores={presents=6}] run summon spider ~2 1 ~
execute as @a[tag=presents,scores={presents=6}] run summon blaze ~5 1 ~10

scoreboard players set @r[tag=presents,scores={presents=1}] presents 7
execute as @a[tag=presents,scores={presents=7}] run give @s trident{display:{Name:'["",{"text":"The Fork","italic":false}]',Lore:['["",{"text":"A spicy one","italic":false}]']},Enchantments:[{lvl:1,id:loyalty}]}

scoreboard players set @r[tag=presents,scores={presents=1}] presents 8
execute as @a[tag=presents,scores={presents=8}] run give @s ender_pearl

execute as @a[tag=presents,scores={presents=1}] run give @s coal 4
execute as @a[tag=presents,scores={presents=1}] run give @s cobweb 4
execute as @a[tag=presents,scores={presents=1}] run give @s tnt 4

scoreboard players set @a[tag=presents] presents 1

tellraw @a[tag=presents] {"text":"I hope you got a gift. Next present wave is in 5 minutes ","bold":true,"color":"gray"}
schedule function lifesteal:christmass_gimmic/presents_wave3 300s