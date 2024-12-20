execute as @a[scores={EquipmentSlot1=2},tag=!EqS1used,advancements={data:trigger_fire=true}] if entity @s[nbt={SelectedItemSlot:2}] at @s run scoreboard players add @s Health 40
execute as @a[scores={EquipmentSlot2=2},tag=!EqS2used,advancements={data:trigger_fire=true}] if entity @s[nbt={SelectedItemSlot:3}] at @s run scoreboard players add @s Health 40

#execute in data:map as @a[scores={EquipmentSlot1=3..4},tag=!EqS1used] if entity @s[nbt={SelectedItemSlot:2}] at @s anchored eyes run summon block_display ^ ^ ^1 {block_state:{"Name":"minecraft:green_shulker_box",Properties:{facing:"up"}}}
#execute in data:map as @a[scores={EquipmentSlot1=3..4},tag=!EqS1used] if entity @s[nbt={SelectedItemSlot:2}] at @s anchored eyes run summon item_display ^ ^ ^1 {item:{"id":"minecraft:green_shulker_box",Count:1}}
execute as @a[scores={EquipmentSlot1=3},tag=!EqS1used,advancements={data:trigger_fire=true}] if entity @s[nbt={SelectedItemSlot:2}] at @s anchored eyes run summon armor_stand ^ ^ ^1 {ArmorItems:[{},{},{},{id:"green_shulker_box",Count:1}],NoGravity:1b,NoBasePlate:1b,Tags:[HE,Grenade,Time],Invisible:1b}
execute as @a[scores={EquipmentSlot2=3},tag=!EqS2used,advancements={data:trigger_fire=true}] if entity @s[nbt={SelectedItemSlot:3}] at @s anchored eyes run summon armor_stand ^ ^ ^1 {ArmorItems:[{},{},{},{id:"green_shulker_box",Count:1}],NoGravity:1b,NoBasePlate:1b,Tags:[HE,Grenade,Time],Invisible:1b}
execute as @a[scores={EquipmentSlot1=4},tag=!EqS1used,advancements={data:trigger_fire=true}] if entity @s[nbt={SelectedItemSlot:2}] at @s anchored eyes run summon armor_stand ^ ^ ^1 {ArmorItems:[{},{},{},{id:"gray_shulker_box",Count:1}],NoGravity:1b,NoBasePlate:1b,Tags:[Smoke,Grenade,Time],Invisible:1b}
execute as @a[scores={EquipmentSlot2=4},tag=!EqS2used,advancements={data:trigger_fire=true}] if entity @s[nbt={SelectedItemSlot:3}] at @s anchored eyes run summon armor_stand ^ ^ ^1 {ArmorItems:[{},{},{},{id:"gray_shulker_box",Count:1}],NoGravity:1b,NoBasePlate:1b,Tags:[Smoke,Grenade,Time],Invisible:1b}
execute as @a[scores={EquipmentSlot1=3..4},tag=!EqS1used,advancements={data:trigger_fire=true}] if entity @s[nbt={SelectedItemSlot:2}] at @s anchored eyes run summon armor_stand ^ ^ ^2 {NoGravity:1b,Small:1b,NoBasePlate:1b,Tags:[FacingGrenade,Time]}
execute as @a[scores={EquipmentSlot1=3..4},tag=!EqS2used,advancements={data:trigger_fire=true}] if entity @s[nbt={SelectedItemSlot:3}] at @s anchored eyes run summon armor_stand ^ ^ ^2 {NoGravity:1b,Small:1b,NoBasePlate:1b,Tags:[FacingGrenade,Time]}
execute as @a[scores={EquipmentSlot1=5},tag=!EqS1used,advancements={data:trigger_fire=true}] if entity @s[nbt={SelectedItemSlot:2}] at @s run tag @s add shapedcharge
execute as @a[scores={EquipmentSlot2=5},tag=!EqS2used,advancements={data:trigger_fire=true}] if entity @s[nbt={SelectedItemSlot:3}] at @s run tag @s add shapedcharge
execute as @a[tag=shapedcharge] at @s run playsound entity.generic.explode player @a ~ ~ ~ 10
execute as @a[tag=shapedcharge] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace light_gray_concrete
execute as @a[tag=shapedcharge] at @s run tag @s remove shapedcharge

execute as @a[scores={EquipmentSlot1=1..5},tag=!EqS1used] if entity @s[nbt={SelectedItemSlot:2},advancements={data:trigger_fire=true}] run tag @s add EqS1used
execute as @a[scores={EquipmentSlot2=1..5},tag=!EqS2used] if entity @s[nbt={SelectedItemSlot:3},advancements={data:trigger_fire=true}] run tag @s add EqS2used
advancement revoke @s only data:trigger_fire