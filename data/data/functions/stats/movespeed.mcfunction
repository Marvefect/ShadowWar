execute as @a[scores={ArmorType=1..},tag=!ACbypass] at @s store result score @s currY run data get entity @s Pos[1] 10
execute as @a[scores={ArmorType=1..},tag=!ACbypass] at @s unless block ~ ~-.1 ~ air store result score @s lastY run data get entity @s Pos[1] 10

# Backup for the times when everything breaks aaah help me I wanna die fuck shit
execute as @a[scores={ArmorType=1..},tag=!ACbypass] at @s unless score @s currY <= @s lastY run summon armor_stand ~ ~ ~ {NoAI:1b,Tags:[Pos],NoGravity:1b}
execute as @a[scores={ArmorType=1..},tag=!ACbypass] at @s unless score @s currY <= @s lastY store result entity @e[tag=Pos,limit=1,sort=nearest] Pos[1] double 0.1 run scoreboard players get @s lastY
execute as @a[scores={ArmorType=1..},tag=!ACbypass] at @s unless score @s currY <= @s lastY run tp @s @e[tag=Pos,limit=1,sort=nearest] 
execute as @a[scores={ArmorType=1..},tag=!ACbypass] at @s unless score @s currY <= @s lastY run kill @e[tag=Pos,limit=1,sort=nearest]
execute as @a[scores={ArmorType=1..},tag=!ACbypass] at @s unless score @s currY <= @s lastY run scoreboard players reset @s Jump
execute as @a[scores={ArmorType=0}] run scoreboard players reset @s Jump

# Delete shit around spawns
execute in data:map positioned 0 1 28 run kill @e[tag=Pos,distance=..2]
execute in data:map positioned 0 1 -28 run kill @e[tag=Pos,distance=..2]

execute as @a[scores={PrimaryWeapon=1..3}] run attribute @s generic.movement_speed modifier remove 0-0-0-0-1
execute as @a[scores={PrimaryWeapon=4}] run attribute @s generic.movement_speed modifier remove 0-0-0-0-1
execute as @a[scores={PrimaryWeapon=4}] run attribute @s generic.movement_speed modifier add 0-0-0-0-1 "Primary Weapon" -0.35 add_multiplied_total