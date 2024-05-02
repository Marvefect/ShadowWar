execute as @a[tag=!Spectating] if score @s EquipmentSlot1 matches 0 run item replace entity @s hotbar.2 with barrier[display:{Name:'{"text":"None","bold":true}'},HideFlags:6] 1
execute as @a[tag=!Spectating] if score @s EquipmentSlot2 matches 0 run item replace entity @s hotbar.3 with barrier[display:{Name:'{"text":"None","bold":true}'},HideFlags:6] 1

execute as @a[tag=EqS1used,tag=!Spectating] unless score @s EquipmentSlot1 matches 1 run item replace entity @s hotbar.2 with barrier[display:{Name:'{"text":"None","bold":true}'},HideFlags:6] 1
execute as @a[tag=EqS2used,tag=!Spectating] unless score @s EquipmentSlot2 matches 1 run item replace entity @s hotbar.3 with barrier[display:{Name:'{"text":"None","bold":true}'},HideFlags:6] 1

execute as @a[scores={EquipmentSlot1=1},tag=!EqS1used,tag=!Spectating] run item replace entity @s hotbar.2 with gray_glazed_terracotta[display:{Name:'{"text":"Micro Camera","bold":true}'},HideFlags:6] 1
execute as @a[scores={EquipmentSlot2=1},tag=!EqS2used,tag=!Spectating] run item replace entity @s hotbar.3 with gray_glazed_terracotta[display:{Name:'{"text":"Micro Camera","bold":true}'},HideFlags:6] 1

execute as @a[scores={EquipmentSlot1=2},tag=!EqS1used,tag=!Spectating] run item replace entity @s hotbar.2 with redstone_block[display:{Name:'{"text":"Medical Kit","bold":true}'},HideFlags:6] 1
execute as @a[scores={EquipmentSlot2=2},tag=!EqS2used,tag=!Spectating] run item replace entity @s hotbar.3 with redstone_block[display:{Name:'{"text":"Medical Kit","bold":true}'},HideFlags:6] 1

execute as @a[scores={EquipmentSlot1=3},tag=!EqS1used,tag=!Spectating] run item replace entity @s hotbar.2 with green_shulker_box[display:{Name:'{"text":"HE Grenade","bold":true}'},HideFlags:6] 1
execute as @a[scores={EquipmentSlot2=3},tag=!EqS2used,tag=!Spectating] run item replace entity @s hotbar.3 with green_shulker_box[display:{Name:'{"text":"HE Grenade","bold":true}'},HideFlags:6] 1

execute as @a[scores={EquipmentSlot1=4},tag=!EqS1used,tag=!Spectating] run item replace entity @s hotbar.2 with light_gray_shulker_box[display:{Name:'{"text":"Smoke Grenade","bold":true}'},HideFlags:6] 1
execute as @a[scores={EquipmentSlot2=4},tag=!EqS2used,tag=!Spectating] run item replace entity @s hotbar.3 with light_gray_shulker_box[display:{Name:'{"text":"Smoke Grenade","bold":true}'},HideFlags:6] 1

execute as @a[scores={EquipmentSlot1=5},tag=!EqS1used,tag=!Spectating] run item replace entity @s hotbar.2 with tnt[display:{Name:'{"text":"Shaped Charge","bold":true}'},HideFlags:6] 1
execute as @a[scores={EquipmentSlot2=5},tag=!EqS2used,tag=!Spectating] run item replace entity @s hotbar.3 with tnt[display:{Name:'{"text":"Shaped Charge","bold":true}'},HideFlags:6] 1