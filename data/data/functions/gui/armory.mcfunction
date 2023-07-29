execute as @e[type=interaction,tag=Primary1] at @s if data entity @s interaction as @p[distance=..2] run scoreboard players set @s PrimaryWeapon 1
execute as @e[type=interaction,tag=Primary2] at @s if data entity @s interaction as @p[distance=..2,scores={Level=5..}] run scoreboard players set @s PrimaryWeapon 2
execute as @e[type=interaction,tag=Primary3] at @s if data entity @s interaction as @p[distance=..2,scores={Level=10..}] run scoreboard players set @s PrimaryWeapon 3
execute as @e[type=interaction,tag=Primary4] at @s if data entity @s interaction as @p[distance=..2,scores={Level=15..}] run scoreboard players set @s PrimaryWeapon 4

execute as @e[type=interaction,tag=Secondary1] at @s if data entity @s interaction as @p[distance=..2] run scoreboard players set @s SecondaryWeapon 1
execute as @e[type=interaction,tag=Secondary2] at @s if data entity @s interaction as @p[distance=..2,scores={Level=5..}] run scoreboard players set @s SecondaryWeapon 2
execute as @e[type=interaction,tag=Secondary3] at @s if data entity @s interaction as @p[distance=..2,scores={Level=15..}] run scoreboard players set @s SecondaryWeapon 3

execute as @e[type=interaction,tag=Armor0] at @s if data entity @s interaction as @p[distance=..2] run scoreboard players set @s ArmorType 0
execute as @e[type=interaction,tag=Armor1] at @s if data entity @s interaction as @p[distance=..2] run scoreboard players set @s ArmorType 1
execute as @e[type=interaction,tag=Armor2] at @s if data entity @s interaction as @p[distance=..2,scores={Level=5..}] run scoreboard players set @s ArmorType 2
execute as @e[type=interaction,tag=Armor3] at @s if data entity @s interaction as @p[distance=..2,scores={Level=10..}] run scoreboard players set @s ArmorType 3
execute as @e[type=interaction,tag=Armor4] at @s if data entity @s interaction as @p[distance=..2,scores={Level=15..}] run scoreboard players set @s ArmorType 4

execute as @e[type=interaction,tag=EqS1N1] at @s if data entity @s interaction as @p[distance=..2,scores={Level=10..}] run scoreboard players set @s EquipmentSlot1 1
execute as @e[type=interaction,tag=EqS1N2] at @s if data entity @s interaction as @p[distance=..2,scores={Level=10..}] run scoreboard players set @s EquipmentSlot1 2
execute as @e[type=interaction,tag=EqS1N3] at @s if data entity @s interaction as @p[distance=..2,scores={Level=10..}] run scoreboard players set @s EquipmentSlot1 3
execute as @e[type=interaction,tag=EqS1N4] at @s if data entity @s interaction as @p[distance=..2,scores={Level=15..}] run scoreboard players set @s EquipmentSlot1 4
execute as @e[type=interaction,tag=EqS1N5] at @s if data entity @s interaction as @p[distance=..2,scores={Level=15..}] run scoreboard players set @s EquipmentSlot1 5

execute as @e[type=interaction,tag=EqS2N1] at @s if data entity @s interaction as @p[distance=..2,scores={Level=10..}] run scoreboard players set @s EquipmentSlot2 1
execute as @e[type=interaction,tag=EqS2N2] at @s if data entity @s interaction as @p[distance=..2,scores={Level=10..}] run scoreboard players set @s EquipmentSlot2 2
execute as @e[type=interaction,tag=EqS2N3] at @s if data entity @s interaction as @p[distance=..2,scores={Level=10..}] run scoreboard players set @s EquipmentSlot2 3
execute as @e[type=interaction,tag=EqS2N4] at @s if data entity @s interaction as @p[distance=..2,scores={Level=15..}] run scoreboard players set @s EquipmentSlot2 4
execute as @e[type=interaction,tag=EqS2N5] at @s if data entity @s interaction as @p[distance=..2,scores={Level=15..}] run scoreboard players set @s EquipmentSlot2 5

execute as @e[type=interaction,tag=Armory] at @s if data entity @s interaction as @p[distance=..2] run tag @s remove EqS1used
execute as @e[type=interaction,tag=Armory] at @s if data entity @s interaction as @p[distance=..2] run tag @s remove EqS2used

execute as @e[type=interaction,tag=Armory] at @s if entity @p[distance=..2] run data remove entity @s interaction