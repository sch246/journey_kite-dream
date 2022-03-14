# input: scb(addr tmp)
# output: scb(succ tmp)
#         storage jk:player_data obj
# 把storage jk:player_data 256x.(addr tmp) 读取到storage jk:player_data obj
scoreboard players set #oper tmp 0
data remove storage jk:player_data obj
function s3:jk_dream/handle/io/256x/4/0