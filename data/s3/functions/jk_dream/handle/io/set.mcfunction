# input: scb(addr tmp)
#       storage jk:player_data obj
# output: scb(succ tmp)
# 把 storage jk:player_data obj 存入到 storage jk:player_data 256x4.(#addr tmp)，并返回data set 是否成功到(succ tmp)

# 获取各分位的值
scoreboard players operation #addr tmp = addr tmp

## 若是负数则改变一下符号位
execute if score #addr tmp matches ..-1 run scoreboard players operation addr tmp += -2147483648 int

scoreboard players operation addr% tmp = addr tmp
scoreboard players operation addr% tmp %= 256 int

scoreboard players operation addr tmp /= 256 int
scoreboard players operation addr/% tmp = addr tmp
scoreboard players operation addr/% tmp %= 256 int

scoreboard players operation addr tmp /= 256 int
scoreboard players operation addr//% tmp = addr tmp
scoreboard players operation addr//% tmp %= 256 int
scoreboard players operation addr/// tmp = addr tmp
scoreboard players operation addr/// tmp /= 256 int

## 把改变的符号位补回来
execute if score #addr tmp matches ..-1 run scoreboard players add addr/// tmp 128

# 暂存一下obj
# obj_tmp = obj
data modify storage jk:player_data obj_tmp set from storage jk:player_data obj

# 存进去
# 256x.(i%) = obj
scoreboard players operation addr tmp = addr% tmp
data remove storage jk:player_data 256x
function s3:jk_dream/handle/io/256x/set
# obj = 256x.(i%)
data modify storage jk:player_data obj set from storage jk:player_data 256x

# 再存
scoreboard players operation addr tmp = addr/% tmp
data remove storage jk:player_data 256x
function s3:jk_dream/handle/io/256x/set
# obj = 256x.(i/%)
data modify storage jk:player_data obj set from storage jk:player_data 256x

# 再存
scoreboard players operation addr tmp = addr//% tmp
data remove storage jk:player_data 256x
function s3:jk_dream/handle/io/256x/set
# obj = 256x.(i//%)
data modify storage jk:player_data obj set from storage jk:player_data 256x

# 再存
scoreboard players operation addr tmp = addr/// tmp
data remove storage jk:player_data 256x
function s3:jk_dream/handle/io/256x/set
# obj = 256x.(i///)
data modify storage jk:player_data io merge from storage jk:player_data 256x

scoreboard players operation addr tmp = #addr tmp
data modify storage jk:player_data obj set from storage jk:player_data obj_tmp