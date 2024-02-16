# Stats
execute as @a[scores={PrimaryWeapon=1},tag=!P.Reloading] run item replace entity @s hotbar.0 with iron_hoe{Interaction:1,CustomModelData:11,Unbreakable:1b,PWeapon:1,display:{Name:'{"text":"F57","bold":true}',Lore:['[{"text":"Damage: 7","italic":false}]','[{"text":"Firerate: 0.2s","italic":false}]','[{"text":"Capacity: 30","italic":false}]','[{"text":"Reload Time: 3s","italic":false}]','[{"text":"Recoil: 0.1m","italic":false}]','[{"text":"Spread: +2° / 20°","italic":false}]']},HideFlags:6} 1
execute as @a[scores={PrimaryWeapon=1}] run scoreboard players set @s P.MaxAmmo 30
execute as @a[scores={PrimaryWeapon=1}] run scoreboard players set @s P.ReloadTime 60
execute as @a[scores={PrimaryWeapon=1}] run scoreboard players set @s P.Firerate 5
execute as @a[scores={PrimaryWeapon=1}] run scoreboard players set @s P.Damage 7

execute as @a[scores={PrimaryWeapon=2},tag=!P.Reloading] run item replace entity @s hotbar.0 with diamond_hoe{Interaction:1,CustomModelData:12,Unbreakable:1b,PWeapon:2,display:{Name:'{"text":"CH-A","bold":true}',Lore:['[{"text":"Damage: 65","italic":false}]','[{"text":"Firerate: 2s","italic":false}]','[{"text":"Capacity: 5","italic":false}]','[{"text":"Reload Time: 4s","italic":false}]','[{"text":"Recoil: 1m","italic":false}]','[{"text":"Spread: +20° / 60°","italic":false}]']},HideFlags:6} 1
execute as @a[scores={PrimaryWeapon=2}] run scoreboard players set @s P.MaxAmmo 5
execute as @a[scores={PrimaryWeapon=2}] run scoreboard players set @s P.ReloadTime 80
execute as @a[scores={PrimaryWeapon=2}] run scoreboard players set @s P.Firerate 40
execute as @a[scores={PrimaryWeapon=2}] run scoreboard players set @s P.Damage 65

execute as @a[scores={PrimaryWeapon=3},tag=!P.Reloading] run item replace entity @s hotbar.0 with iron_hoe{Interaction:1,CustomModelData:13,Unbreakable:1b,PWeapon:3,display:{Name:'{"text":"CBR-C","bold":true}',Lore:['[{"text":"Damage: 18","italic":false}]','[{"text":"Firerate: 0.5s","italic":false}]','[{"text":"Capacity: 10","italic":false}]','[{"text":"Reload Time: 3s","italic":false}]','[{"text":"Recoil: 0.2m","italic":false}]','[{"text":"Spread: +3° / 25°","italic":false}]']},HideFlags:6} 1
execute as @a[scores={PrimaryWeapon=3}] run scoreboard players set @s P.MaxAmmo 10
execute as @a[scores={PrimaryWeapon=3}] run scoreboard players set @s P.ReloadTime 60
execute as @a[scores={PrimaryWeapon=3}] run scoreboard players set @s P.Firerate 10
execute as @a[scores={PrimaryWeapon=3}] run scoreboard players set @s P.Damage 18


execute as @a[scores={PrimaryWeapon=4},tag=!P.Reloading] run item replace entity @s hotbar.0 with diamond_hoe{Interaction:1,CustomModelData:14,Unbreakable:1b,PWeapon:4,display:{Name:'{"text":"Sawblade","bold":true}',Lore:['[{"text":"Damage: 4","italic":false}]','[{"text":"Firerate: 0.1s","italic":false}]','[{"text":"Capacity: 100","italic":false}]','[{"text":"Reload Time: 6s","italic":false}]','[{"text":"Recoil: 0.07m","italic":false}]','[{"text":"+1° / 40°","italic":false}]']},HideFlags:6} 1
execute as @a[scores={PrimaryWeapon=4}] run scoreboard players set @s P.MaxAmmo 100
execute as @a[scores={PrimaryWeapon=4}] run scoreboard players set @s P.ReloadTime 120
execute as @a[scores={PrimaryWeapon=4}] run scoreboard players set @s P.Firerate 2
execute as @a[scores={PrimaryWeapon=4}] run scoreboard players set @s P.Damage 4


execute as @a[scores={SecondaryWeapon=1},tag=!S.Reloading] run item replace entity @s hotbar.1 with stone_hoe{Interaction:1,CustomModelData:21,Unbreakable:1b,SWeapon:1,display:{Name:'{"text":"UP-9","bold":true}',Lore:['[{"text":"Damage: 9","italic":false}]','[{"text":"Firerate: 0.5s","italic":false}]','[{"text":"Capacity: 12","italic":false}]','[{"text":"Reload Time: 2.5s","italic":false}]','[{"text":"Recoil: 0.3m","italic":false}]','[{"text":"Spread: +5° / +15°","italic":false}]']},HideFlags:6} 1
execute as @a[scores={SecondaryWeapon=1}] run scoreboard players set @s S.MaxAmmo 12
execute as @a[scores={SecondaryWeapon=1}] run scoreboard players set @s S.ReloadTime 50
execute as @a[scores={SecondaryWeapon=1}] run scoreboard players set @s S.Firerate 10
execute as @a[scores={SecondaryWeapon=1}] run scoreboard players set @s S.Damage 9

execute as @a[scores={SecondaryWeapon=2},tag=!S.Reloading] run item replace entity @s hotbar.1 with stone_hoe{Interaction:1,CustomModelData:22,Unbreakable:1b,SWeapon:2,display:{Name:'{"text":"K45","bold":true}',Lore:['[{"text":"Damage: 11","italic":false}]','[{"text":"Firerate: 0.5s","italic":false}]','[{"text":"Capacity: 8","italic":false}]','[{"text":"Reload Time: 3s","italic":false}]','[{"text":"Recoil: 0.25m","italic":false}]','[{"text":"Spread: +4° / +12°","italic":false}]']},HideFlags:6} 1
execute as @a[scores={SecondaryWeapon=2}] run scoreboard players set @s S.MaxAmmo 8
execute as @a[scores={SecondaryWeapon=2}] run scoreboard players set @s S.ReloadTime 60
execute as @a[scores={SecondaryWeapon=2}] run scoreboard players set @s S.Firerate 10
execute as @a[scores={SecondaryWeapon=2}] run scoreboard players set @s S.Damage 11

execute as @a[scores={SecondaryWeapon=3},tag=!S.Reloading] run item replace entity @s hotbar.1 with iron_hoe{Interaction:1,CustomModelData:23,Unbreakable:1b,SWeapon:3,display:{Name:'{"text":"S97","bold":true}',Lore:['[{"text":"Damage: 4","italic":false}]','[{"text":"Firerate: 0.2s","italic":false}]','[{"text":"Capacity: 30","italic":false}]','[{"text":"Reload Time: 3s","italic":false}]','[{"text":"Recoil: 0.15m","italic":false}]','[{"text":"Spread: +3° / +15°","italic":false}]']},HideFlags:6} 1
execute as @a[scores={SecondaryWeapon=3}] run scoreboard players set @s S.MaxAmmo 12
execute as @a[scores={SecondaryWeapon=3}] run scoreboard players set @s S.ReloadTime 50
execute as @a[scores={SecondaryWeapon=3}] run scoreboard players set @s S.Firerate 10
execute as @a[scores={SecondaryWeapon=3}] run scoreboard players set @s S.Damage 9

execute as @a[scores={SecondaryWeapon=4},tag=!S.Reloading] run item replace entity @s hotbar.1 with golden_hoe{Interaction:1,CustomModelData:24,Unbreakable:1b,SWeapon:4,display:{Name:'{"text":"RAVEN","bold":true}',Lore:['[{"text":"Damage: 30","italic":false}]','[{"text":"Firerate: 1.25s","italic":false}]','[{"text":"Capacity: 6","italic":false}]','[{"text":"Reload Time: 3s","italic":false}]','[{"text":"Recoil: 0.8m","italic":false}]','[{"text":"Spread: +15° / 45°","italic":false}]']},HideFlags:6} 1
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

execute as @a[nbt={SelectedItem:{"tag":{Interaction:1}}},tag=!Spectating] run item replace entity @s weapon.offhand with ender_eye 
#execute as @a[nbt={SelectedItem:{"tag":{Interaction:1}}}] at @s run tp @e[type=interaction,limit=1,sort=nearest,tag=Gun] ~ ~.6 ~ facing entity @p
#execute as @a[nbt={SelectedItem:{"tag":{Interaction:1}}}] at @s unless entity @e[type=interaction,distance=..1.5] run summon interaction ~ ~ ~ {height:1.5f,width:1.5f,Tags:[Gun]}
execute as @e[type=interaction,tag=Gun] at @s unless entity @e[type=player,distance=..3] run kill @s
execute as @e[type=interaction,tag=Gun] run data remove entity @s attack
execute as @e[type=interaction,tag=Gun] run data remove entity @s interaction