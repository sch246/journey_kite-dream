# get seed and reset state

# get seed
execute store result score #seed.hi32 tmp run data get entity @s UUID[1]
execute store result score #seed.lo16 tmp run data get entity @s UUID[3]
scoreboard players operation #seed.lo16 tmp %= #1s tmp

# reset state
scoreboard players operation #state.hi32 tmp = #seed.hi32 tmp
scoreboard players operation #state.lo16 tmp = #seed.lo16 tmp
