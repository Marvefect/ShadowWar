execute as @a[scores={EquipmentSlot1=2},tag=!EqS1used] if entity @s[nbt={SelectedItemSlot:2}] at @s run scoreboard players add @s Health 40
execute as @a[scores={EquipmentSlot2=2},tag=!EqS2used] if entity @s[nbt={SelectedItemSlot:3}] at @s run scoreboard players add @s Health 40
execute as @a[scores={EquipmentSlot1=2},tag=!EqS1used] if entity @s[nbt={SelectedItemSlot:2}] at @s run tag @s add EqS1used
execute as @a[scores={EquipmentSlot2=2},tag=!EqS2used] if entity @s[nbt={SelectedItemSlot:3}] at @s run tag @s add EqS2used

execute as @a[scores={EquipmentSlot1=5},tag=!EqS1used] if entity @s[nbt={SelectedItemSlot:2}] at @s run tag @s add shapedcharge
execute as @a[scores={EquipmentSlot2=5},tag=!EqS2used] if entity @s[nbt={SelectedItemSlot:3}] at @s run tag @s add shapedcharge
execute as @a[scores={EquipmentSlot1=5},tag=!EqS1used] if entity @s[nbt={SelectedItemSlot:2}] at @s run tag @s add EqS1used
execute as @a[scores={EquipmentSlot2=5},tag=!EqS2used] if entity @s[nbt={SelectedItemSlot:3}] at @s run tag @s add EqS2used
execute as @a[tag=shapedcharge] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace light_gray_concrete
execute as @a[tag=shapedcharge] at @s run tag @s remove shapedcharge

advancement revoke @s only data:left_click2