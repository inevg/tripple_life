scoreboard objectives add mlg_score dummy

tag @r[tag=!mlg] add mlg
tag @r[tag=!mlg] add mlg
tag @r[tag=!mlg] add mlg
tag @r[tag=!mlg] add mlg
tag @r[tag=!mlg] add mlg
tag @r[tag=!mlg] add mlg
scoreboard players set @a[tag=mlg] mlg_score 1
tag @r[tag=mlg,tag=!mlg_pr1] add mlg_pr1
tag @r[tag=mlg,tag=!mlg_pr1] add mlg_pr1
tag @r[tag=mlg,tag=!mlg_pr1,tag=!mlgpr2] add mlg_pr2
tag @r[tag=mlg,tag=!mlg_pr1,tag=!mlgpr2] add mlg_pr2
tag @r[tag=mlg,tag=!mlg_pr1,tag=!mlgpr2,tag=!mlg_pr3] add mlg_pr3
tag @r[tag=mlg,tag=!mlg_pr1,tag=!mlgpr2,tag=!mlg_pr3] add mlg_pr3
scoreboard players set @a[tag=mlg] mlg_score 1
title @a[tag=mlg] title {"text": "You are selected as an MLG-er"}
tellraw @a[tag=mlg] {"text": "You will be performing 3 MLG clutches in a row, as well as 5 other players. For every successfull clutch you will be awarded. If you die you are out of the mlg game. You will be given a water bucket to clutch with. Ender pearls are dissalowed as well as anything other than a water bucket. You have 15 seconds to prepare mentally."}
give @a[tag=mlg] water_bucket
#smaller rewards on each clutch perhaps

schedule function lifesteal:mlg/mlg_warn 15s