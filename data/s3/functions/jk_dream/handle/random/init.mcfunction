# 参数:(multi.lo16=58989) (multi.lo32=-554899859) (multi.hi32=384748)
# 常量:(1s=65536)
scoreboard players set #multi.lo16 tmp 58989
scoreboard players set #multi.lo32 tmp -554899859
scoreboard players set #multi.hi32 tmp 384748
scoreboard players set #1s tmp 65536
execute as @e[sort=random,limit=1] run function s3:jk_dream/handle/random/init_as_r
