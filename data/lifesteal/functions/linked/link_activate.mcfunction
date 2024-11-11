tag @r add soul
tag @a[tag=soul] add soul1
#tag @r add soul

execute if score @r ls_health = @p[tag=soul1] ls_health run tag @p add soul
tag @a[tag=soul,tag=!soul1] add soul2

title @a[tag=soul] title {"text": "Soulbound!"}
tellraw @a[tag=soul] {"text": "You have been assigned a soulmate. You will be sharing your healthbar with them for the rest of the session. If one dies, so does the other."}