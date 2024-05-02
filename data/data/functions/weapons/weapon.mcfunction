# Stats
execute as @a[scores={PrimaryWeapon=1},tag=!P.Reloading] run item replace entity @s hotbar.0 with iron_hoe[minecraft:custom_data={PWeapon:1},minecraft:custom_model_data=11,minecraft:unbreakable={},minecraft:custom_name="F57"] 1
execute as @a[scores={PrimaryWeapon=1}] run scoreboard players set @s P.ReloadTime 60
execute as @a[scores={PrimaryWeapon=1}] run scoreboard players set @s P.Firerate 5
execute as @a[scores={PrimaryWeapon=1}] run scoreboard players set @s P.Damage 7

execute as @a[scores={PrimaryWeapon=2},tag=!P.Reloading] run item replace entity @s hotbar.0 with diamond_hoe[minecraft:custom_data={PWeapon:2},minecraft:custom_model_data=12,minecraft:unbreakable={},minecraft:custom_name="CH-A"] 1
execute as @a[scores={PrimaryWeapon=2}] run scoreboard players set @s P.MaxAmmo 5
execute as @a[scores={PrimaryWeapon=2}] run scoreboard players set @s P.ReloadTime 80
execute as @a[scores={PrimaryWeapon=2}] run scoreboard players set @s P.Firerate 40
execute as @a[scores={PrimaryWeapon=2}] run scoreboard players set @s P.Damage 65

execute as @a[scores={PrimaryWeapon=3},tag=!P.Reloading] run item replace entity @s hotbar.0 with iron_hoe[minecraft:custom_data={PWeapon:3},minecraft:custom_model_data=13,minecraft:unbreakable={},minecraft:custom_name="CBR-C"] 1
execute as @a[scores={PrimaryWeapon=3}] run scoreboard players set @s P.ReloadTime 60
execute as @a[scores={PrimaryWeapon=3}] run scoreboard players set @s P.Firerate 10
execute as @a[scores={PrimaryWeapon=3}] run scoreboard players set @s P.Damage 18


execute as @a[scores={PrimaryWeapon=4},tag=!P.Reloading] run item replace entity @s hotbar.0 with diamond_hoe[minecraft:custom_data={PWeapon:4},minecraft:custom_model_data=14,minecraft:unbreakable={},minecraft:custom_name="Sawblade"] 1
execute as @a[scores={PrimaryWeapon=4}] run scoreboard players set @s P.MaxAmmo 100
execute as @a[scores={PrimaryWeapon=4}] run scoreboard players set @s P.ReloadTime 120
execute as @a[scores={PrimaryWeapon=4}] run scoreboard players set @s P.Firerate 2
execute as @a[scores={PrimaryWeapon=4}] run scoreboard players set @s P.Damage 4


execute as @a[scores={SecondaryWeapon=1},tag=!S.Reloading] run item replace entity @s hotbar.1 with stone_hoe[minecraft:custom_data={SWeapon:1},minecraft:custom_model_data=21,minecraft:unbreakable={},minecraft:custom_name="UP9"] 1
execute as @a[scores={SecondaryWeapon=1}] run scoreboard players set @s S.MaxAmmo 12
execute as @a[scores={SecondaryWeapon=1}] run scoreboard players set @s S.ReloadTime 50
execute as @a[scores={SecondaryWeapon=1}] run scoreboard players set @s S.Firerate 10
execute as @a[scores={SecondaryWeapon=1}] run scoreboard players set @s S.Damage 9

execute as @a[scores={SecondaryWeapon=2},tag=!S.Reloading] run item replace entity @s hotbar.1 with stone_hoe[minecraft:custom_data={SWeapon:2},minecraft:custom_model_data=22,minecraft:unbreakable={},minecraft:custom_name="K45"] 1
execute as @a[scores={SecondaryWeapon=2}] run scoreboard players set @s S.MaxAmmo 8
execute as @a[scores={SecondaryWeapon=2}] run scoreboard players set @s S.ReloadTime 60
execute as @a[scores={SecondaryWeapon=2}] run scoreboard players set @s S.Firerate 10
execute as @a[scores={SecondaryWeapon=2}] run scoreboard players set @s S.Damage 11

execute as @a[scores={SecondaryWeapon=3},tag=!S.Reloading] run item replace entity @s hotbar.1 with iron_hoe[minecraft:custom_data={SWeapon:3},minecraft:custom_model_data=23,minecraft:unbreakable={},minecraft:custom_name="S97"] 1
execute as @a[scores={SecondaryWeapon=3}] run scoreboard players set @s S.MaxAmmo 30
execute as @a[scores={SecondaryWeapon=3}] run scoreboard players set @s S.ReloadTime 50
execute as @a[scores={SecondaryWeapon=3}] run scoreboard players set @s S.Firerate 4
execute as @a[scores={SecondaryWeapon=3}] run scoreboard players set @s S.Damage 4

execute as @a[scores={SecondaryWeapon=4},tag=!S.Reloading] run item replace entity @s hotbar.1 with golden_hoe[minecraft:custom_data={SWeapon:4},minecraft:custom_model_data=24,minecraft:unbreakable={},minecraft:custom_name="Raven"] 1
execute as @a[scores={SecondaryWeapon=4}] run scoreboard players set @s S.MaxAmmo 8
execute as @a[scores={SecondaryWeapon=4}] run scoreboard players set @s S.ReloadTime 60
execute as @a[scores={SecondaryWeapon=4}] run scoreboard players set @s S.Firerate 25
execute as @a[scores={SecondaryWeapon=4}] run scoreboard players set @s S.Damage 30

# Code

execute as @a unless score @s PrimaryWeapon matches 1.. run scoreboard players set @s PrimaryWeapon 1
execute as @a unless score @s SecondaryWeapon matches 1.. run scoreboard players set @s SecondaryWeapon 1

execute as @a unless score @s P.Ammo matches 0.. run scoreboard players operation @s P.Ammo = @s P.MaxAmmo 
execute as @a unless score @s S.Ammo matches 0.. run scoreboard players operation @s S.Ammo = @s S.MaxAmmo 
execute as @a if score @s P.Ammo > @s P.MaxAmmo run scoreboard players reset @s P.Ammo
execute as @a if score @s S.Ammo > @s S.MaxAmmo run scoreboard players reset @s S.Ammo

execute as @a[tag=P.Firerate] if score @s Time >= @s P.Firerate run tag @s remove P.Firerate
execute as @a[tag=S.Firerate] if score @s Time >= @s S.Firerate run tag @s remove S.Firerate

execute as @a unless score @s P.Ammo matches 1.. run function data:weapons/reload
execute as @a unless score @s S.Ammo matches 1.. run function data:weapons/reload
execute as @a[tag=P.Reloading] run function data:weapons/reload
execute as @a[tag=S.Reloading] run function data:weapons/reload

execute as @a[tag=!Spectating] run item replace entity @s weapon.offhand with ender_eye 
#execute as @a[nbt={SelectedItem:{"tag":{Interaction:1}}}] at @s run tp @e[type=interaction,limit=1,sort=nearest,tag=Gun] ~ ~.6 ~ facing entity @p
#execute as @a[nbt={SelectedItem:{"tag":{Interaction:1}}}] at @s unless entity @e[type=interaction,distance=..1.5] run summon interaction ~ ~ ~ {height:1.5f,width:1.5f,Tags:[Gun]}
#execute as @e[type=interaction,tag=Gun] at @s unless entity @e[type=player,distance=..3] run kill @s
#execute as @e[type=interaction,tag=Gun] run data remove entity @s attack
#execute as @e[type=interaction,tag=Gun] run data remove entity @s interaction