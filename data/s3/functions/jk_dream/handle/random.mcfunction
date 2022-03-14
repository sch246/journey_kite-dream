# 输入 $min,$max tmp 输出 $output tmp
# 包含端点，不改变输入

# 整数范围随机
# 若没有初始化，初始化
execute unless score #seed.lo16 tmp matches -2147483648..2147483647 run function s3:jk_dream/handle/random/init
# 整数范围内随机,输出#output tmp
function s3:jk_dream/handle/random/rand

# 取范围
# 确保大小
execute store success score #if_reverse tmp if score $min tmp > $max tmp
execute if score #if_reverse tmp matches 1 run scoreboard players operation $min tmp >< $max tmp
# 由于包含端点，随机范围+1
scoreboard players operation #range tmp = $max tmp
scoreboard players operation #range tmp -= $min tmp
scoreboard players add #range tmp 1

# 取值
scoreboard players operation $output tmp = #output tmp
scoreboard players operation $output tmp %= #range tmp
scoreboard players operation $output tmp += $min tmp
