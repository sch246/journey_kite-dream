execute if score # debug.log matches 1 run tellraw @a {"text": "_check","color": "gray"}
execute store result score #is_overworld tmp if data entity @s {Dimension:"minecraft:overworld"}
execute unless score #is_overworld tmp matches 1 if score # debug.log matches 1 run tellraw @a {"text": "维度不正确","color": "yellow"}
execute if score #is_overworld tmp matches 1 if score # debug.must_dream matches 1 run function s3:jk_dream/go_to_bed/enter_dream
execute if score #is_overworld tmp matches 1 unless score # debug.must_dream matches 1 run function s3:jk_dream/go_to_bed/_check2
