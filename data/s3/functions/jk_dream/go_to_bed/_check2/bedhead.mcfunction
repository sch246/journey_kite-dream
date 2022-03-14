# 放置灵魂光源*0.25
# 放置非灵魂光源*0.5
# 每个黑色羊毛*1.25
scoreboard players set $no_dream_percent tmp 100
execute if block ^ ^ ^2 #s3:normal_lights run scoreboard players set $no_dream_percent tmp 50
execute if block ^ ^ ^2 #s3:soul_lights run scoreboard players set $no_dream_percent tmp 25
function s3:jk_dream/go_to_bed/_check2/multi
scoreboard players set $no_dream_percent tmp 100
execute if block ^ ^ ^2 black_wool run scoreboard players operation $no_dream_percent tmp *= 5 int
execute if block ^ ^ ^2 black_wool run scoreboard players operation $no_dream_percent tmp /= 4 int
execute if block ^ ^ ^-1 black_wool run scoreboard players operation $no_dream_percent tmp *= 5 int
execute if block ^ ^ ^-1 black_wool run scoreboard players operation $no_dream_percent tmp /= 4 int
execute if block ^1 ^ ^1 black_wool run scoreboard players operation $no_dream_percent tmp *= 5 int
execute if block ^1 ^ ^1 black_wool run scoreboard players operation $no_dream_percent tmp /= 4 int
execute if block ^-1 ^ ^1 black_wool run scoreboard players operation $no_dream_percent tmp *= 5 int
execute if block ^-1 ^ ^1 black_wool run scoreboard players operation $no_dream_percent tmp /= 4 int
execute if block ^1 ^ ^ black_wool run scoreboard players operation $no_dream_percent tmp *= 5 int
execute if block ^1 ^ ^ black_wool run scoreboard players operation $no_dream_percent tmp /= 4 int
execute if block ^-1 ^ ^ black_wool run scoreboard players operation $no_dream_percent tmp *= 5 int
execute if block ^-1 ^ ^ black_wool run scoreboard players operation $no_dream_percent tmp /= 4 int
function s3:jk_dream/go_to_bed/_check2/multi