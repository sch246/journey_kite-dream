
execute as @a at @s run function s3:jk_dream/ptick

execute as @e[type=villager,tag=jk_dreamer] at @s if score @s Age matches 60.. run function s3:jk_dream/vtick

# 到白天则强制起床
execute store result score #daytime tmp run time query daytime

execute if score #daytime tmp matches 0..12000 unless predicate s3:is_thundering as @a[tag=jk_dreaming] run function s3:jk_dream/lwake