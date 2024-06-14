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
execute as @a if score @s Hunger > @s SetHunger run effect give @s hunger 1 255 true
execute as @a if score @s Hunger = @s SetHunger run effect clear @s hunger
execute as @a if score @s Hunger = @s SetHunger run effect clear @s saturation
execute as @a if score @s Hunger < @s SetHunger run effect give @s saturation 1 1 true

execute as @a if predicate data:is_stationary run scoreboard players operation @s SetHunger += 1 Numbers
execute as @a if predicate data:is_sprinting run scoreboard players operation @s SetHunger -= 2 Numbers
scoreboard players set @a[scores={SetHunger=..0}] SetHunger 1
scoreboard players set @a[scores={SetHunger=21..}] SetHunger 20