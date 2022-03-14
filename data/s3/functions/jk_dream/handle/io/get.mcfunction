# input: scb(addr tmp)
# output: scb(succ tmp)
#         storage jk:player_data obj
# 把storage jk:player_data 256x4.(addr tmp) 读取到storage jk:player_data obj

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

data remove storage jk:player_data 256x

# 把256x3段从256x4中取出来
# 256x3 = 256x4
data modify storage jk:player_data 256x set from storage jk:player_data io
# obj = 256x.(i///)
scoreboard players operation addr tmp = addr/// tmp
function s3:jk_dream/handle/io/256x/get
# 256x = obj
data modify storage jk:player_data 256x set from storage jk:player_data obj

# 再取
# obj = 256x.(i//%)
scoreboard players operation addr tmp = addr//% tmp
function s3:jk_dream/handle/io/256x/get
# 256x = obj
data modify storage jk:player_data 256x set from storage jk:player_data obj

# 再取
# obj = 256x.(i/%)
scoreboard players operation addr tmp = addr/% tmp
function s3:jk_dream/handle/io/256x/get
# 256x = obj
data modify storage jk:player_data 256x set from storage jk:player_data obj

# 再取
# obj = 256x.(i%)
scoreboard players operation addr tmp = addr% tmp
function s3:jk_dream/handle/io/256x/get

scoreboard players operation addr tmp = #addr tmp