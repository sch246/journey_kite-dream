execute if score @s sleep_in_bed matches 1.. run function s3:jk_dream/go_to_bed/_check
scoreboard players set @s sleep_in_bed 0

execute if score @s[tag=jk_dreaming] jk_dream_death matches 1.. run function s3:jk_dream/check_death