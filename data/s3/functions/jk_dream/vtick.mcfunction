# 村民受到打扰则起床
scoreboard players operation # tmp = @s jk_dreamer_uid

execute positioned ~ ~1 ~ if entity @s[dx=0] as @a[tag=jk_dreaming] if score @s uid = # tmp run function s3:jk_dream/vwake
scoreboard players set #kill tmp 0
execute as @a[distance=0..] if score @s uid = # tmp run scoreboard players set #kill tmp 1
execute if score #kill tmp matches 1 run function s3:jk_dream/handle/silent_kill
# say a