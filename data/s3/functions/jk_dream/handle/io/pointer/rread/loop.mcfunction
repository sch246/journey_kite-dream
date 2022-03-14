function s3:jk_dream/handle/io/pointer/read
scoreboard players remove #loop tmp 1
execute if score #loop tmp matches 0.. if score succ tmp matches 1 if data storage jk:player_data obj.p run function s3:jk_dream/handle/io/pointer/rread/loop