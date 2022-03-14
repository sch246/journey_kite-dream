# input: scb(addr tmp)
#       storage jk:player_data obj
# output: scb(succ tmp)
# 把 storage jk:player_data obj 存入到 storage jk:player_data 256x.(addr tmp)，并返回data set 是否成功到(succ tmp)
scoreboard players set #oper tmp 1
function s3:jk_dream/handle/io/256x/4/0