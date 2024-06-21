# Jumping Jacks
execute as @a[scores={Jump=1..,ArmorType=0..2},tag=!Dev] run scoreboard players operation @s SetHunger -= 4 Numbers
execute as @a[scores={Jump=1..,ArmorType=3..},tag=!Dev] run scoreboard players operation @s SetHunger -= 6 Numbers
execute as @a[scores={SetHunger=..5},tag=!Dev] at @s run attribute @s minecraft:generic.jump_strength base set 0
execute as @a[scores={SetHunger=6..},tag=!Dev] at @s run attribute @s minecraft:generic.jump_strength base set 0.42
execute as @a[scores={Jump=1..}] run scoreboard players reset @s Jump

# Delete shit around spawns
execute in data:map positioned 0 1 28 run kill @e[tag=Pos,distance=..2]
execute in data:map positioned 0 1 -28 run kill @e[tag=Pos,distance=..2]

# Armor speed modifiers

execute as @a[scores={PrimaryWeapon=1..3}] run attribute @s generic.movement_speed modifier remove 0-0-0-0-1
execute as @a[scores={PrimaryWeapon=4}] run attribute @s generic.movement_speed modifier remove 0-0-0-0-1
execute as @a[scores={PrimaryWeapon=4}] run attribute @s generic.movement_speed modifier add 0-0-0-0-1 -0.35 add_multiplied_base

execute as @a unless score @s PrevArmorType = @s ArmorType run attribute @s generic.movement_speed modifier remove 0-0-0-0-3
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 1 run attribute @s generic.movement_speed modifier add 0-0-0-0-3 -0.1 add_multiplied_base
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 2 run attribute @s generic.movement_speed modifier add 0-0-0-0-3 -0.175 add_multiplied_base
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 3 run attribute @s generic.movement_speed modifier add 0-0-0-0-3 -0.25 add_multiplied_base
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 4 run attribute @s generic.movement_speed modifier add 0-0-0-0-3 -0.4 add_multiplied_base

execute as @a run scoreboard players operation @s PrevArmorType = @s ArmorType

# Stamina system
execute as @a if score @s Hunger > @s SetHunger run effect give @s hunger 2 255 true
execute as @a if score @s Hunger = @s SetHunger run effect clear @s hunger
execute as @a if score @s Hunger = @s SetHunger run effect clear @s saturation
execute as @a if score @s Hunger < @s SetHunger run effect give @s saturation 1 1 true

execute as @a[tag=!Dev] if predicate data:is_stationary run scoreboard players operation @s SetHunger += 2 Numbers
execute as @a[tag=!Dev,scores={ArmorType=0..2}] if predicate data:is_sprinting run scoreboard players operation @s SetHunger -= 1 Numbers
execute as @a[tag=!Dev,scores={ArmorType=3..}] if predicate data:is_sprinting run scoreboard players operation @s SetHunger -= 2 Numbers
scoreboard players set @a[scores={SetHunger=..0},tag=!Dev] SetHunger 1
scoreboard players set @a[scores={SetHunger=21..},tag=!Dev] SetHunger 20