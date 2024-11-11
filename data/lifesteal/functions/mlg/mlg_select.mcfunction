tag @r add mlg
tag @r add mlg
tag @a[tag=mlg] add mlg_pr1
tag @r add mlg
tag @r add mlg
tag @a[tag=mlg,tag=!mlgpr1] add mlg_pr2
tag @r add mlg
tag @r add mlg
tag @a[tag=mlg,tag=!mlg_pr1,tag=!mlgpr2] add mlg_pr3
scoreboard players set @a[tag=mlg] mlg_score 1
title @a[tag=mlg] title {"text": "You are selected as an MLG-er"}
tellraw @a[tag=mlg] {"text": "You will be performing 3 MLG clutches in a row, as well as 5 other players. For every successfull clutch you will be awarded. If you die you are out. You will be given a water bucket to clutch with. Ender pearls are dissalowed as well as anything other than a water bucket. You have 15 seconds to prepare mentally."}
give @a[tag=mlg] water_bucket
#smaller rewards on each clutch perhaps

schedule function lifesteal:mlg/mlg_warn 15s