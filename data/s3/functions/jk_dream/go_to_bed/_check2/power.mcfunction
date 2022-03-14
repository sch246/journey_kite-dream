# 输入每次的乘积和总共乘的次数

execute if score $count tmp matches 1.. run scoreboard players operation $no_dream_percent tmp *= $multi_percent tmp
execute if score $count tmp matches 1.. run scoreboard players operation $no_dream_percent tmp /= 100 int
scoreboard players remove $count tmp 1
execute if score $count tmp matches 1.. run function s3:jk_dream/go_to_bed/_check2/power