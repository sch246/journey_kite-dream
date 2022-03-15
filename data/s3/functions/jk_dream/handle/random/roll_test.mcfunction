scoreboard players set $max tmp 10000
scoreboard players set $min tmp 1
function s3:jk_dream/handle/random
tellraw @a [{"text": "此次roll到的点数为:"},{"score":{"name": "$output","objective": "tmp"}}]