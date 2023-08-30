execute as @e[tag=Grenade] at @s if entity @e[tag=FacingGrenade,distance=..1.5] run tp @s ~ ~ ~ facing entity @e[tag=FacingGrenade,limit=1,sort=nearest]
execute as @e[tag=FacingGrenade] run kill @s

execute as @e[tag=Grenade] store result score @s x1 run data get entity @s Rotation[0] 1
execute as @e[tag=Grenade] store result score @s y1 run data get entity @s Rotation[1] 1

execute as @e[tag=Grenade] run scoreboard players add @s y1 2
execute as @e[tag=Grenade] store result entity @s Rotation[1] float 1 run scoreboard players get @s y1

execute as @e[tag=Grenade] at @s unless block ~0.5 ~ ~ air store result entity @s Rotation[0] float -1 run scoreboard players get @s x1
execute as @e[tag=Grenade] at @s unless block ~-0.5 ~ ~ air store result entity @s Rotation[0] float -1 run scoreboard players get @s x1

execute as @e[tag=Grenade] at @s unless block ~ ~ ~0.5 air store result entity @s Rotation[0] float 1 run scoreboard players operation 180 Numbers -= @s x1
execute as @e[tag=Grenade] at @s unless block ~ ~ ~-0.5 air store result entity @s Rotation[0] float 1 run scoreboard players operation 180 Numbers -= @s x1

execute as @e[tag=Grenade] at @s unless block ~ ~-.5 ~ air store result entity @s Rotation[1] float -0.8 run scoreboard players get @s y1

execute as @e[tag=Grenade] at @s if score @s Time matches 1..100 run tp @s ^ ^ ^.5
execute as @e[tag=Grenade] at @s if score @s Time matches 101.. if block ~ ~-.5 ~ air run tp @s ~ ~-.5 ~

execute as @e[tag=Smoke] at @s if score @s Time matches 110.. run particle explosion_emitter ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 110 run playsound block.fire.extinguish player @a ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 120 run playsound block.fire.extinguish player @a ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 150 run playsound block.fire.extinguish player @a ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 170 run playsound block.fire.extinguish player @a ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 190 run playsound block.fire.extinguish player @a ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 210 run playsound block.fire.extinguish player @a ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 230 run playsound block.fire.extinguish player @a ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 250 run playsound block.fire.extinguish player @a ~ ~ ~
execute as @e[tag=Smoke] at @s if score @s Time matches 270 run playsound block.fire.extinguish player @a ~ ~ ~

execute as @e[tag=HE] at @s if score @s Time matches 110 run playsound entity.generic.explode player @a ~ ~ ~ 100 0.9
execute as @e[tag=HE] at @s if score @s Time matches 110 run particle explosion_emitter ~ ~ ~
execute as @e[tag=HE] at @s if score @s Time matches 110 run scoreboard players remove @e[team=Red,distance=..2] Health 50
execute as @e[tag=HE] at @s if score @s Time matches 110 run scoreboard players remove @e[team=Blue,distance=..2] Health 50
execute as @e[tag=HE] at @s if score @s Time matches 110 run scoreboard players remove @e[team=Red,distance=2.1..4] Health 30
execute as @e[tag=HE] at @s if score @s Time matches 110 run scoreboard players remove @e[team=Blue,distance=2.1..4] Health 30
execute as @e[tag=HE] at @s if score @s Time matches 110 run scoreboard players remove @e[team=Red,distance=4.1..6] Health 10
execute as @e[tag=HE] at @s if score @s Time matches 110 run scoreboard players remove @e[team=Blue,distance=4.1..6] Health 10
execute as @e[tag=HE] at @s run kill @a[distance=..6,scores={Health=..0}]

execute as @e[tag=HE] if score @s Time matches 120.. run kill @s
execute as @e[tag=Smoke] if score @s Time matches 310.. run kill @s
