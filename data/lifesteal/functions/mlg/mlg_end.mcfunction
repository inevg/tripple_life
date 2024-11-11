tellraw @a[tag=mlg,scores={mlg_score=1}] {"text": "You have successfully performed the 3 MLG clutches"}
give @a[tag=mlg,scores={mlg_score=1}] ender_pearl 3
give @a[tag=mlg,scores={mlg_score=1}] diamond 3
give @a[tag=mlg,scores={mlg_score=1}] golden_apple
#give @a[tag=mlg_pr2,scores={mlg_score=1}] golden_apple
#give @a[tag=mlg_pr3,scores={mlg_score=1}] diamond 2
#give @a[tag=mlg_pr1,scores={mlg_score=1}] ender_pearl
#give @a[tag=mlg_pr1,scores={mlg_score=1}] golden_apple 3
#give @a[tag=mlg_pr2,scores={mlg_score=1}] diamond 5
#give @a[tag=mlg_pr3,scores={mlg_score=1}] ender_pearl 3

fill 50 100 50 -50 100 -50 air

tag @a remove mlg
tag @a remove mlg_pr1
tag @a remove mlg_pr2
tag @a remove mlg_pr3
scoreboard players set @a mlg_score 0