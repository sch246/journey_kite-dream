execute if score # debug.log matches 1 run say wake_up
function s3:jk_dream/handle/state/load
tag @s remove jk_dreaming
scoreboard players operation # tmp = @s uid
execute as @e[type=villager,tag=jk_dreamer] run scoreboard players operation @s jk_dreamer_uid -= # tmp
tp @s @e[type=villager,tag=jk_dreamer,scores={jk_dreamer_uid=0},limit=1]
execute as @e[type=villager,tag=jk_dreamer,scores={jk_dreamer_uid=0},limit=1] at @s run function s3:jk_dream/handle/silent_kill
execute as @e[type=villager,tag=jk_dreamer] run scoreboard players operation @s jk_dreamer_uid += # tmp