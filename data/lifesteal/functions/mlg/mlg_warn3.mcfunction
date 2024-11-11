give @a[tag=mlg,scores={mlg_score=1}] diamond 5
#give @a[tag=mlg_pr3,scores={mlg_score=1}] golden_apple
#give @a[tag=mlg_pr1,scores={mlg_score=1}] diamond 2
#give @a[tag=mlg_pr2,scores={mlg_score=1}] ender_pearl
#give @a[tag=mlg_pr1,scores={mlg_score=1}] golden_apple 2
#give @a[tag=mlg_pr2,scores={mlg_score=1}] diamond 4
#give @a[tag=mlg_pr3,scores={mlg_score=1}] ender_pearl 2
tellraw @a[tag=mlg] {"text": "You will be teleported for the last time in 5 seconds"}
schedule function lifesteal:mlg/mlg_phase3 5s