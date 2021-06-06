execute as @e[tag=moobloom,type=minecraft:cow] at @s unless entity @e[distance=..2,tag=moobloom,type=minecraft:armor_stand] run summon minecraft:armor_stand ~ ~0.65 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["moobloom"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dandelion"},NoGravity:1b,Time:1,DropItem:0b,HurtEntities:0b,Tags:["moobloom"]}]}
execute as @e[tag=moobloom,type=minecraft:cow,nbt=!{NoAI:1b}] at @s if entity @e[distance=..2,tag=moobloom,type=minecraft:armor_stand] run tp @e[distance=..2,tag=moobloom,type=minecraft:armor_stand,limit=1,sort=nearest] ~ ~0.65 ~
execute as @e[tag=moobloom,type=!minecraft:cow] at @s unless entity @e[tag=moobloom,type=minecraft:cow,distance=..3] run kill @s
execute as @e[tag=moobloom,type=minecraft:falling_block] run data merge entity @s {Time:1}
execute at @e[tag=moobloom,type=minecraft:cow] as @e[type=minecraft:bee,distance=..5] run data merge entity @s {HasNectar:1b}
