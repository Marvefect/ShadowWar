execute as @a[scores={Jump=1},predicate=data:jump] unless score @s ArmorType matches 0..1 at @s if block ~ ~-0.1 ~ air run tp @s ~ ~ ~ facing ^ ^ ^-1
execute as @a[scores={Jump=1},predicate=data:jump] at @s if block ~ ~-0.1 ~ air run scoreboard players set @s Jump 2
execute as @a[scores={Jump=2..},predicate=data:jump] unless score @s ArmorType matches 0..1 at @s unless block ~ ~-0.2 ~ air run tp @s ~ ~ ~ facing ^ ^ ^-1
execute as @a[scores={Jump=2..}] at @s unless block ~ ~-0.2 ~ air run scoreboard players reset @s Jump

execute as @a[scores={PrimaryWeapon=1..3}] run attribute @s generic.movement_speed modifier remove 0-0-0-0-1

execute as @a[scores={PrimaryWeapon=4}] run attribute @s generic.movement_speed modifier remove 0-0-0-0-1
execute as @a[scores={PrimaryWeapon=4}] run attribute @s generic.movement_speed modifier add 0-0-0-0-1 "Primary Weapon" -0.35 multiply