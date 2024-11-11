give @a[tag=mlg,scores={mlg_score=1}] golden_apple 2
#give @a[tag=mlg_pr1,scores={mlg_score=1}] golden_apple
#give @a[tag=mlg_pr2,scores={mlg_score=1}] diamond 2
#give @a[tag=mlg_pr3,scores={mlg_score=1}] ender_pearl
tellraw @a[tag=mlg] {"text": "You will be teleported again in 5 seconds"}
schedule function lifesteal:mlg/mlg_phase2 5s