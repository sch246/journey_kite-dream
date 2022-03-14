# 设置分数为n/100即可对不做梦概率进行相乘
scoreboard players operation $no_dream tmp *= $no_dream_percent tmp
scoreboard players operation $no_dream tmp /= 100 int