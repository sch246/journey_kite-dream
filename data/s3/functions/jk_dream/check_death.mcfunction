# 高频检测直到玩家复活
execute store result score #health tmp run data get entity @s Health 10
execute if score #health tmp matches 1.. run scoreboard players set @s jk_dream_death 0
execute if score #health tmp matches 1.. run function s3:jk_dream/dimensions/wake_up
execute if score #health tmp matches 1.. run tellraw @s [{"text": "你从睡梦中惊醒，全身被冷汗浸湿","color": "red"}]
execute if score # debug.log matches 1 if score #health tmp matches 1.. run say death-wake