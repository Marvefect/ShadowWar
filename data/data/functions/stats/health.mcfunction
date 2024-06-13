execute as @a if score @s Health > @s MaxHealth run scoreboard players operation @s Health = @s MaxHealth
#effect give @a instant_health 1 1 true

# Update HP
execute as @a run function data:stats/updatehp

# Stats
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 0 run scoreboard players set @s ArmorHealth 0
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 0 run scoreboard players set @s ArmorProt 100

execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 1 run scoreboard players set @s ArmorHealth 300
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 1 run scoreboard players set @s ArmorProt 85

execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 2 run scoreboard players set @s ArmorHealth 400
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 2 run scoreboard players set @s ArmorProt 70

execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 3 run scoreboard players set @s ArmorHealth 600
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 3 run scoreboard players set @s ArmorProt 55

execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 4 run scoreboard players set @s ArmorHealth 800
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 4 run scoreboard players set @s ArmorProt 40

execute as @a[scores={ArmorType=0}] run item replace entity @s armor.chest with air
execute as @a[scores={ArmorType=1..,ArmorHealth=..-1}] run item replace entity @s armor.chest with air
execute as @a[scores={ArmorType=1,ArmorHealth=0..},tag=!Spectating] run item replace entity @s armor.chest with leather_chestplate[minecraft:custom_model_data=1,minecraft:unbreakable={},minecraft:custom_name="II-A_Scout"] 
execute as @a[scores={ArmorType=2,ArmorHealth=0..},tag=!Spectating] run item replace entity @s armor.chest with chainmail_chestplate[minecraft:custom_model_data=1,minecraft:unbreakable={},minecraft:custom_name="III-A_Raider"]
execute as @a[scores={ArmorType=3,ArmorHealth=0..},tag=!Spectating] run item replace entity @s armor.chest with iron_chestplate[minecraft:custom_model_data=1,minecraft:unbreakable={},minecraft:custom_name="III-A_Frontline"]
execute as @a[scores={ArmorType=4,ArmorHealth=0..},tag=!Spectating] run item replace entity @s armor.chest with netherite_chestplate[minecraft:custom_model_data=1,minecraft:unbreakable={},minecraft:custom_name="III_Aegis"]
