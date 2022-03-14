data modify entity @s Brain.memories."minecraft:home".value set from storage temp value
tag @s add jk_dreamer
tag @s add needAge
tag @s remove new
scoreboard players operation @s jk_dreamer_uid = $selfuid tmp