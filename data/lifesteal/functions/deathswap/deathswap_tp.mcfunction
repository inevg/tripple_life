execute as @a[tag=ds1] at @a[tag=ds1] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'{"text":"Ds1"}'}
execute as @a[tag=ds2] at @a[tag=ds2] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'{"text":"Ds2"}'}
#tp @a[tag=ds1] @p[tag=ds2]
tp @a[tag=ds1] @e[type=minecraft:armor_stand,limit=1,name="Ds2"]
tp @a[tag=ds2] @e[type=minecraft:armor_stand,limit=1,name="Ds1"]


#tp @p @s

#execute as @a[team=Blue,limit=1] at @a[team=Blue,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'{"text":"Blue"}'}
#tp @a[team=Red,limit=1] @e[type=minecraft:armor_stand,limit=1,name=Blue]

kill @e[type=armor_stand]

schedule function lifesteal:deathswap/deathswap_10s 590s