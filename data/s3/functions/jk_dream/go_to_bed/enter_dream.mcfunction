# 玩家在床的位置执行此函数可以做梦
execute if score # debug.log matches 1 run say enter_dream
# 召唤村民在原地并且让它睡觉，绑定uid并加上jk_dreamer的tag
# 获取pos
function s3:jk_dream/go_to_bed/enter_dream/get_int_pos_self
# 获取uid
scoreboard players operation $selfuid tmp = @s uid
summon villager ~ ~0.6 ~ {Tags:["new"]}
execute as @e[type=villager,tag=new,distance=..1,limit=1] run function s3:jk_dream/go_to_bed/enter_dream/setvillager
execute if score # debug.log matches 1 unless data entity @e[type=villager,tag=jk_dreamer,distance=..1,limit=1] Brain.memories."minecraft:home" run say 村民不存在home!
execute if score # debug.log matches 1 if data entity @e[type=villager,tag=jk_dreamer,distance=..1,limit=1] Brain.memories."minecraft:home" run tellraw @a {"entity":"@e[type=villager,tag=jk_dreamer,distance=..1,limit=1]","nbt":"Brain.memories.\"minecraft:home\""}
# 保存玩家背包
function s3:jk_dream/handle/state/save
# 选择维度
function s3:jk_dream/go_to_bed/select_dimension
tag @s add jk_dreaming
forceload add ~ ~