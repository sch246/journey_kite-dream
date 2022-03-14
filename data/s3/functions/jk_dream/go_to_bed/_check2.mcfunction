execute if score # debug.log matches 1 run say _check2
# 计算概率
# 正常情况下玩家进入梦境概率为0.5
# 计算因子是“不入睡”的概率

# 月相0 1 2 3 4导致的变化区间是1.5 1.25 1.0 0.75 0.5,越圆越容易做梦
# 放置灵魂光源*0.25
# 放置非灵魂光源*0.5
# 每个黑色羊毛*1.25
# 每个状态效果*0.8
# 血量越低越容易做梦,概率区间为2~0.5
# 饥饿值越低越容易做梦,概率区间为1.25~0.75

# 设置总区间
scoreboard players set $max tmp 10000
scoreboard players set $min tmp 1
function s3:jk_dream/handle/random
scoreboard players operation $random tmp = $output tmp
# 设置初始概率
scoreboard players set $no_dream tmp 5000

# 获取月相亮度
function s3:jk_dream/handle/moon_phase
scoreboard players operation $no_dream_percent tmp = 6 int
scoreboard players operation $no_dream_percent tmp -= $moon_light tmp
scoreboard players operation $no_dream_percent tmp *= 25 int
function s3:jk_dream/go_to_bed/multi

# 检测玩家床附近的方块
function s3:jk_dream/handle/check_direction_of_bed
execute if score $direc tmp matches 0 rotated -90 0 run function s3:jk_dream/go_to_bed/bedhead
execute if score $direc tmp matches 1 rotated 0 0 run function s3:jk_dream/go_to_bed/bedhead
execute if score $direc tmp matches 2 rotated 90 0 run function s3:jk_dream/go_to_bed/bedhead
execute if score $direc tmp matches 3 rotated 180 0 run function s3:jk_dream/go_to_bed/bedhead

# 检测状态数量
scoreboard players set $no_dream_percent tmp 100
execute store result score $count tmp if data entity @s ActiveEffects[]
scoreboard players set $multi_percent tmp 80
function s3:jk_dream/go_to_bed/power
function s3:jk_dream/go_to_bed/multi

# 检测血量
execute store result score $max_health tmp run attribute @s generic.max_health get
execute store result score $no_dream_percent tmp run data get entity @s Health
scoreboard players operation $no_dream_percent tmp *= 150 int
scoreboard players operation $no_dream_percent tmp /= $max_health tmp
#0~150填入区间 50~200,血量越高不做梦概率越高
scoreboard players add $no_dream_percent tmp 50
function s3:jk_dream/go_to_bed/multi

# 检测饥饿值
execute store result score $no_dream_percent tmp run data get entity @s foodLevel
scoreboard players operation $no_dream_percent tmp *= 150 int
scoreboard players operation $no_dream_percent tmp /= 20 int
scoreboard players add $no_dream_percent tmp 50
function s3:jk_dream/go_to_bed/multi

# 给玩家增加记录，并对记录中频繁进入的玩家减小概率




execute if score $random tmp >= $no_dream tmp run function s3:jk_dream/go_to_bed/enter_dream