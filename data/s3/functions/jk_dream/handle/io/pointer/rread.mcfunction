# 循环读取指针直到不是指针,上限默认为65535层
scoreboard players operation #loop tmp = $ancMaxLoop ancConfig
function s3:jk_dream/handle/io/pointer/rread/loop