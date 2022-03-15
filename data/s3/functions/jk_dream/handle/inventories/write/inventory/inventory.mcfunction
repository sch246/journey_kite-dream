data remove storage temp Inventory.Inventory
data modify storage temp Inventory.Inventory set from entity @s Inventory

execute if score # debug.log matches 1 run tellraw @a {"text": "inventory_save","color": "gray"}