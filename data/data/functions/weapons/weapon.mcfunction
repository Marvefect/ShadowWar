# Primary Weapons:
# 1 - F57 (02)
# 2 - CH-A (03)
# 3 - CBR-C (06)
# 4 - Sawblade (07)

execute as @a[scores={PrimaryWeapon=1},tag=!P.Reloading] run item replace entity @s hotbar.0 with iron_hoe{Interaction:1,CustomModelData:2,Unbreakable:1b,PWeapon:1,display:{Name:'{"text":"F57","bold":true}'},HideFlags:6} 1
execute as @a[scores={PrimaryWeapon=1}] run scoreboard players set @s P.MaxAmmo 30
execute as @a[scores={PrimaryWeapon=1}] run scoreboard players set @s P.ReloadTime 80
execute as @a[scores={PrimaryWeapon=1}] run scoreboard players set @s P.Firerate 3
execute as @a[scores={PrimaryWeapon=1}] run scoreboard players set @s P.Damage 7

execute as @a[scores={PrimaryWeapon=2},tag=!P.Reloading] run item replace entity @s hotbar.0 with netherite_hoe{Interaction:1,CustomModelData:2,Unbreakable:1b,PWeapon:2,display:{Name:'{"text":"CH-A","bold":true}'},HideFlags:6} 1
execute as @a[scores={PrimaryWeapon=2}] run scoreboard players set @s P.MaxAmmo 5
execute as @a[scores={PrimaryWeapon=2}] run scoreboard players set @s P.ReloadTime 80
execute as @a[scores={PrimaryWeapon=2}] run scoreboard players set @s P.Firerate 60
execute as @a[scores={PrimaryWeapon=2}] run scoreboard players set @s P.Damage 90

execute as @a[scores={PrimaryWeapon=3},tag=!P.Reloading] run item replace entity @s hotbar.0 with iron_hoe{Interaction:1,CustomModelData:2,Unbreakable:1b,PWeapon:3,display:{Name:'{"text":"CBR-C","bold":true}'},HideFlags:6} 1
execute as @a[scores={PrimaryWeapon=3}] run scoreboard players set @s P.MaxAmmo 20
execute as @a[scores={PrimaryWeapon=3}] run scoreboard players set @s P.ReloadTime 60
execute as @a[scores={PrimaryWeapon=3}] run scoreboard players set @s P.Firerate 10
execute as @a[scores={PrimaryWeapon=3}] run scoreboard players set @s P.Damage 15


execute as @a[scores={PrimaryWeapon=4},tag=!P.Reloading] run item replace entity @s hotbar.0 with netherite_hoe{Interaction:1,CustomModelData:2,Unbreakable:1b,PWeapon:4,display:{Name:'{"text":"Sawblade","bold":true}'},HideFlags:6} 1
execute as @a[scores={PrimaryWeapon=4}] run scoreboard players set @s P.MaxAmmo 100
execute as @a[scores={PrimaryWeapon=4}] run scoreboard players set @s P.ReloadTime 120
execute as @a[scores={PrimaryWeapon=4}] run scoreboard players set @s P.Firerate 2
execute as @a[scores={PrimaryWeapon=4}] run scoreboard players set @s P.Damage 5


# Secondary Weapons:
# 1 - UP9 (01)
# 2 - 480 MCS (05)
# 3 - Raven (04)

execute as @a[scores={SecondaryWeapon=1},tag=!S.Reloading] run item replace entity @s hotbar.1 with iron_hoe{Interaction:1,CustomModelData:1,Unbreakable:1b,SWeapon:1,display:{Name:'{"text":"UP-9","bold":true}'},HideFlags:6} 1
execute as @a[scores={SecondaryWeapon=1}] run scoreboard players set @s S.MaxAmmo 12
execute as @a[scores={SecondaryWeapon=1}] run scoreboard players set @s S.ReloadTime 50
execute as @a[scores={SecondaryWeapon=1}] run scoreboard players set @s S.Firerate 10
execute as @a[scores={SecondaryWeapon=1}] run scoreboard players set @s S.Damage 12

execute as @a[scores={SecondaryWeapon=2},tag=!S.Reloading] run item replace entity @s hotbar.1 with stone_hoe{Interaction:1,CustomModelData:1,Unbreakable:1b,SWeapon:2,display:{Name:'{"text":"480 MCS","bold":true}'},HideFlags:6} 1
execute as @a[scores={SecondaryWeapon=2}] run scoreboard players set @s S.MaxAmmo 6
execute as @a[scores={SecondaryWeapon=2}] run scoreboard players set @s S.ReloadTime 80
execute as @a[scores={SecondaryWeapon=2}] run scoreboard players set @s S.Firerate 20
execute as @a[scores={SecondaryWeapon=2}] run scoreboard players set @s S.Damage 7

execute as @a[scores={SecondaryWeapon=3},tag=!S.Reloading] run item replace entity @s hotbar.1 with golden_hoe{Interaction:1,CustomModelData:1,Unbreakable:1b,SWeapon:3,display:{Name:'{"text":"Raven","bold":true}'},HideFlags:6} 1
execute as @a[scores={SecondaryWeapon=3}] run scoreboard players set @s S.MaxAmmo 8
execute as @a[scores={SecondaryWeapon=3}] run scoreboard players set @s S.ReloadTime 60
execute as @a[scores={SecondaryWeapon=3}] run scoreboard players set @s S.Firerate 15
execute as @a[scores={SecondaryWeapon=3}] run scoreboard players set @s S.Damage 20

execute as @a unless score @s P.Ammo matches 0.. run scoreboard players operation @s P.Ammo = @s P.MaxAmmo 
execute as @a unless score @s S.Ammo matches 0.. run scoreboard players operation @s S.Ammo = @s S.MaxAmmo 
execute as @a if score @s P.Ammo > @s P.MaxAmmo run scoreboard players reset @s P.Ammo
execute as @a if score @s S.Ammo > @s S.MaxAmmo run scoreboard players reset @s S.Ammo

## Code
# Firerate
execute as @a[tag=P.Firerate] if score @s Time >= @s P.Firerate run tag @s remove P.Firerate
execute as @a[tag=S.Firerate] if score @s Time >= @s S.Firerate run tag @s remove S.Firerate

execute as @a unless score @s P.Ammo matches 1.. run function data:weapons/reload
execute as @a unless score @s S.Ammo matches 1.. run function data:weapons/reload
execute as @a[tag=P.Reloading] run function data:weapons/reload
execute as @a[tag=S.Reloading] run function data:weapons/reload

execute as @a[nbt={SelectedItem:{"tag":{Interaction:1}}}] at @s run tp @e[type=interaction,limit=1,sort=nearest,tag=Gun] ~ ~.6 ~ facing entity @p
execute as @a[nbt={SelectedItem:{"tag":{Interaction:1}}}] at @s unless entity @e[type=interaction,distance=..1.5] run summon interaction ~ ~ ~ {height:1.5f,width:1.5f,Tags:[Gun]}
execute as @e[type=interaction,tag=Gun] at @s unless entity @e[type=player,distance=..3] run kill @s
execute as @e[type=interaction,tag=Gun] run data remove entity @s attack
execute as @e[type=interaction,tag=Gun] run data remove entity @s interaction