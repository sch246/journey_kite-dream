# 获取月相
# 0满月 4新月
execute store result score $moon_phase tmp run time query day
scoreboard players operation $moon_phase tmp %= 8 int
# 获取亮度
scoreboard players operation $moon_light tmp = $moon_phase tmp
scoreboard players operation $moon_light tmp -= 4 int
execute if score $moon_light tmp matches ..-1 run scoreboard players operation $moon_light tmp *= -1 int