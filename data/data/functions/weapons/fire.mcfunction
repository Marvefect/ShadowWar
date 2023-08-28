advancement revoke @s only data:trigger_fire
advancement revoke @s only data:trigger_equipment
playsound item.crossbow.shoot player @s[tag=!P.Firerate,tag=!P.Reloading,nbt={SelectedItemSlot:0}] ~ ~ ~ 1 2
playsound item.crossbow.shoot player @s[tag=!S.Firerate,tag=!S.Reloading,nbt={SelectedItemSlot:1}] ~ ~ ~ 1 2
execute as @s[scores={P.Ammo=1..},tag=!P.Firerate,nbt={SelectedItemSlot:0}] at @s positioned ~ ~1.5 ~ if block ^ ^ ^1 air positioned ^ ^ ^2.5 if block ~ ~ ~ air run function data:weapons/ray
execute as @s[scores={S.Ammo=1..},tag=!S.Firerate,nbt={SelectedItemSlot:1}] at @s positioned ~ ~1.5 ~ if block ^ ^ ^1 air positioned ^ ^ ^2.5 if block ~ ~ ~ air run function data:weapons/ray

execute if score @s P.Ammo matches 1.. run scoreboard players remove @s[tag=!P.Firerate,nbt={SelectedItemSlot:0}] P.Ammo 1
execute if score @s P.Ammo matches 1.. run scoreboard players reset @s[tag=!P.Firerate,nbt={SelectedItemSlot:0}] Time
execute if score @s P.Ammo matches 1.. run tag @s[tag=!P.Firerate,nbt={SelectedItemSlot:0}] add P.Firerate

execute if score @s S.Ammo matches 1.. run scoreboard players remove @s[tag=!S.Firerate,nbt={SelectedItemSlot:1}] S.Ammo 1
execute if score @s S.Ammo matches 1.. run scoreboard players reset @s[tag=!S.Firerate,nbt={SelectedItemSlot:1}] Time
execute if score @s S.Ammo matches 1.. run tag @s[tag=!S.Firerate,nbt={SelectedItemSlot:1}] add S.Firerate