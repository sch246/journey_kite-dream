data remove storage temp value
data modify storage temp value.dimension set value "minecraft:overworld"
data modify storage temp value.pos set value [I;0,0,0]
execute store result storage temp value.pos[0] int 1 run data get entity @s Pos[0]
execute store result storage temp value.pos[1] int 1 run data get entity @s Pos[1]
execute store result storage temp value.pos[2] int 1 run data get entity @s Pos[2]