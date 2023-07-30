execute as @e[tag=Grenade] at @s if entity @e[tag=FacingGrenade,distance=..1.5] run tp @s ~ ~ ~ facing entity @e[tag=FacingGrenade,limit=1]
execute as @e[tag=FacingGrenade] if score @s Time matches 1.. run kill @s

execute as @e[tag=Grenade] store result score @s x1 run data get entity @s Rotation[0] 1
execute as @e[tag=Grenade] store result score @s y1 run data get entity @s Rotation[1] 1

execute as @e[tag=Grenade] run scoreboard players add @s y1 2
execute as @e[tag=Grenade] store result entity @s Rotation[1] float 1 run scoreboard players get @s y1

execute as @e[tag=Grenade] at @s unless block ~ ~ ~ air store result entity @s Rotation[0] float 1 run scoreboard players operation @s x1 += 180 Numbers
execute as @e[tag=Grenade] at @s unless block ~ ~-.5 ~ air store result entity @s Rotation[1] float -0.8 run scoreboard players get @s y1
execute as @e[tag=Grenade] at @s unless block ~ ~ ~ air run scoreboard players remove @s Motion 1
execute as @e[tag=Grenade] at @s unless block ~ ~-.5 ~ air run scoreboard players remove @s Motion 1

execute as @e[tag=Grenade] at @s if score @s Time matches 1..100 run tp @s ^ ^ ^.5

execute as @e[tag=Grenade] if score @s Time matches 1200.. run kill @s
