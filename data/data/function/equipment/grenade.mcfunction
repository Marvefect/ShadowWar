execute as @e[tag=Grenade] at @s if entity @e[tag=FacingGrenade,distance=..1.5] run tp @s ~ ~ ~ facing entity @e[tag=FacingGrenade,limit=1,sort=nearest]
execute as @e[tag=FacingGrenade] run kill @s

execute as @e[tag=Grenade] run attribute @s minecraft:generic.scale base set 0.4

execute as @e[tag=Grenade] store result score @s x1 run data get entity @s Rotation[0] 1
execute as @e[tag=Grenade] store result score @s y1 run data get entity @s Rotation[1] 1

execute as @e[tag=Grenade] run scoreboard players add @s y1 2
execute as @e[tag=Grenade] store result entity @s Rotation[1] float 1 run scoreboard players get @s y1

execute as @e[tag=Grenade] at @s unless block ~0.5 ~ ~ air store result entity @s Rotation[0] float -1 run scoreboard players get @s x1
execute as @e[tag=Grenade] at @s unless block ~-0.5 ~ ~ air store result entity @s Rotation[0] float -1 run scoreboard players get @s x1

execute as @e[tag=Grenade] at @s unless block ~ ~ ~0.5 air store result entity @s Rotation[0] float 1 run scoreboard players operation 180 Numbers -= @s x1
execute as @e[tag=Grenade] at @s unless block ~ ~ ~-0.5 air store result entity @s Rotation[0] float 1 run scoreboard players operation 180 Numbers -= @s x1

execute as @e[tag=Grenade] at @s unless block ~ ~-.5 ~ air store result entity @s Rotation[1] float -0.6 run scoreboard players get @s y1

execute as @e[tag=Grenade] at @s if score @s Time matches 1..60 run tp @s ^ ^ ^.5
execute as @e[tag=Grenade] at @s if score @s Time matches 61.. if block ~ ~-.5 ~ air run tp @s ~ ~-.1 ~

execute as @e[tag=Smoke] at @s if score @s Time matches 70.. run particle explosion_emitter ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 70 run playsound block.fire.extinguish player @a ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 90 run playsound block.fire.extinguish player @a ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 110 run playsound block.fire.extinguish player @a ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 130 run playsound block.fire.extinguish player @a ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 150 run playsound block.fire.extinguish player @a ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 170 run playsound block.fire.extinguish player @a ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 190 run playsound block.fire.extinguish player @a ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 210 run playsound block.fire.extinguish player @a ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 230 run playsound block.fire.extinguish player @a ~ ~ ~

execute as @e[tag=HE] at @s if score @s Time matches 70 run playsound entity.generic.explode player @a ~ ~ ~ 100 0.9
execute as @e[tag=HE] at @s if score @s Time matches 70 run particle explosion_emitter ~ ~ ~
execute as @e[tag=HE] at @s if score @s Time matches 70 run scoreboard players remove @e[team=Red,distance=..2] Health 50
execute as @e[tag=HE] at @s if score @s Time matches 70 run scoreboard players remove @e[team=Blue,distance=..2] Health 50
execute as @e[tag=HE] at @s if score @s Time matches 70 run scoreboard players remove @e[team=Red,distance=2.1..4] Health 30
execute as @e[tag=HE] at @s if score @s Time matches 70 run scoreboard players remove @e[team=Blue,distance=2.1..4] Health 30
execute as @e[tag=HE] at @s if score @s Time matches 70 run scoreboard players remove @e[team=Red,distance=4.1..6] Health 10
execute as @e[tag=HE] at @s if score @s Time matches 70 run scoreboard players remove @e[team=Blue,distance=4.1..6] Health 10
execute as @e[tag=HE] at @s if entity @a[distance=..6,scores={Health=..0}] run tellraw @a [{"selector":"@a[distance=..6,scores={Health=..0}]"},{"text": " was blown up.","color": "white"}]
execute as @e[tag=HE] at @s run tag @a[distance=..6,scores={Health=..0}] add Spectating
execute as @e[tag=HE] at @s run kill @a[distance=..6,scores={Health=..0}]

execute as @e[tag=HE] if score @s Time matches 71.. run kill @s
execute as @e[tag=Smoke] if score @s Time matches 231.. run kill @s
