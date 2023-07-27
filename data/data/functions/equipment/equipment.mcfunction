execute as @a[scores={EquipmentSlot1=1},tag=!EqS1used] run item replace entity @s hotbar.2 with gray_glazed_terracotta{Interaction:1,display:{Name:'{"text":"Micro Camera","bold":true}'},HideFlags:6} 1
execute as @a[scores={EquipmentSlot2=1},tag=!EqS2used] run item replace entity @s hotbar.3 with gray_glazed_terracotta{Interaction:1,display:{Name:'{"text":"Micro Camera","bold":true}'},HideFlags:6} 1

execute as @a[scores={EquipmentSlot1=2},tag=!EqS1used] run item replace entity @s hotbar.2 with redstone_block{Interaction:1,display:{Name:'{"text":"Medical Kit","bold":true}'},HideFlags:6} 1
execute as @a[scores={EquipmentSlot2=2},tag=!EqS2used] run item replace entity @s hotbar.3 with redstone_block{Interaction:1,display:{Name:'{"text":"Medical Kit","bold":true}'},HideFlags:6} 1

execute as @a[scores={EquipmentSlot1=3},tag=!EqS1used] run item replace entity @s hotbar.2 with green_shulker_box{Interaction:1,display:{Name:'{"text":"HE Grenade","bold":true}'},HideFlags:6} 1
execute as @a[scores={EquipmentSlot2=3},tag=!EqS2used] run item replace entity @s hotbar.3 with green_shulker_box{Interaction:1,display:{Name:'{"text":"HE Grenade","bold":true}'},HideFlags:6} 1

execute as @a[scores={EquipmentSlot1=4},tag=!EqS1used] run item replace entity @s hotbar.2 with light_gray_shulker_box{Interaction:1,display:{Name:'{"text":"Smoke Grenade","bold":true}'},HideFlags:6} 1
execute as @a[scores={EquipmentSlot2=4},tag=!EqS2used] run item replace entity @s hotbar.3 with light_gray_shulker_box{Interaction:1,display:{Name:'{"text":"Smoke Grenade","bold":true}'},HideFlags:6} 1

execute as @a[scores={EquipmentSlot1=5},tag=!EqS1used] run item replace entity @s hotbar.2 with tnt{Interaction:1,display:{Name:'{"text":"Shaped Charge","bold":true}'},HideFlags:6,CanPlaceOn:["minecraft:light_gray_concrete"]} 1
execute as @a[scores={EquipmentSlot2=5},tag=!EqS2used] run item replace entity @s hotbar.3 with tnt{Interaction:1,display:{Name:'{"text":"Shaped Charge","bold":true}'},HideFlags:6,CanPlaceOn:["minecraft:light_gray_concrete"]} 1

# Shaped Charge
