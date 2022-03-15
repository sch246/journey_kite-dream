# 放置灵魂光源*0.25
# 放置非灵魂光源*0.5
# 每个黑色羊毛*1.25
scoreboard players set $no_dream_percent tmp 100
execute if block ^ ^ ^1 #s3:normal_lights run scoreboard players set $no_dream_percent tmp 50
execute if block ^ ^ ^1 #s3:soul_lights run scoreboard players set $no_dream_percent tmp 25
execute if score # debug.log matches 1 run tellraw @a [{"text": "","color": "dark_aqua"},{"text": "床头光源加成:","color": "aqua"},{"score":{"name": "$no_dream_percent","objective": "tmp"}},"%"]
function s3:jk_dream/go_to_bed/_check2/multi
scoreboard players set $no_dream_percent tmp 100
scoreboard players set #count tmp 0
execute if block ^ ^ ^1 black_wool run scoreboard players operation $no_dream_percent tmp *= 5 int
execute if block ^ ^ ^1 black_wool run scoreboard players operation $no_dream_percent tmp /= 4 int
execute if block ^ ^ ^1 black_wool run scoreboard players add #count tmp 1
execute if block ^ ^ ^-2 black_wool run scoreboard players operation $no_dream_percent tmp *= 5 int
execute if block ^ ^ ^-2 black_wool run scoreboard players operation $no_dream_percent tmp /= 4 int
execute if block ^ ^ ^-2 black_wool run scoreboard players add #count tmp 1
execute if block ^1 ^ ^ black_wool run scoreboard players operation $no_dream_percent tmp *= 5 int
execute if block ^1 ^ ^ black_wool run scoreboard players operation $no_dream_percent tmp /= 4 int
execute if block ^1 ^ ^ black_wool run scoreboard players add #count tmp 1
execute if block ^-1 ^ ^ black_wool run scoreboard players operation $no_dream_percent tmp *= 5 int
execute if block ^-1 ^ ^ black_wool run scoreboard players operation $no_dream_percent tmp /= 4 int
execute if block ^-1 ^ ^ black_wool run scoreboard players add #count tmp 1
execute if block ^1 ^ ^-1 black_wool run scoreboard players operation $no_dream_percent tmp *= 5 int
execute if block ^1 ^ ^-1 black_wool run scoreboard players operation $no_dream_percent tmp /= 4 int
execute if block ^1 ^ ^-1 black_wool run scoreboard players add #count tmp 1
execute if block ^-1 ^ ^-1 black_wool run scoreboard players operation $no_dream_percent tmp *= 5 int
execute if block ^-1 ^ ^-1 black_wool run scoreboard players operation $no_dream_percent tmp /= 4 int
execute if block ^-1 ^ ^-1 black_wool run scoreboard players add #count tmp 1
execute if score # debug.log matches 1 run tellraw @a [{"text": "","color": "dark_aqua"},{"text": "黑色羊毛加成:","color": "aqua"},{"score":{"name": "$no_dream_percent","objective": "tmp"}},"% ",{"text": "x","color": "gray"},{"score":{"name": "#count","objective": "tmp"},"color": "aqua"}]
function s3:jk_dream/go_to_bed/_check2/multi