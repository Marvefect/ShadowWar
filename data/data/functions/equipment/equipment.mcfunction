execute as @a[tag=!Spectating,tag=!Dev] if score @s EquipmentSlot1 matches 0 run item replace entity @s hotbar.2 with barrier[minecraft:custom_name="None"]
execute as @a[tag=!Spectating,tag=!Dev] if score @s EquipmentSlot2 matches 0 run item replace entity @s hotbar.3 with barrier[minecraft:custom_name="None"]

execute as @a[tag=EqS1used,tag=!Spectating,tag=!Dev] unless score @s EquipmentSlot1 matches 1 run item replace entity @s hotbar.2 with barrier[minecraft:custom_name="None"]
execute as @a[tag=EqS2used,tag=!Spectating,tag=!Dev] unless score @s EquipmentSlot2 matches 1 run item replace entity @s hotbar.3 with barrier[minecraft:custom_name="None"]

execute as @a[scores={EquipmentSlot1=1},tag=!EqS1used,tag=!Spectating,tag=!Dev] run item replace entity @s hotbar.2 with gray_glazed_terracotta[minecraft:custom_name="Micro_Camera"]
execute as @a[scores={EquipmentSlot2=1},tag=!EqS2used,tag=!Spectating,tag=!Dev] run item replace entity @s hotbar.3 with gray_glazed_terracotta[minecraft:custom_name="Micro_Camera"]

execute as @a[scores={EquipmentSlot1=2},tag=!EqS1used,tag=!Spectating,tag=!Dev] run item replace entity @s hotbar.2 with redstone_block[minecraft:custom_name="First_Aid_Kit"]
execute as @a[scores={EquipmentSlot2=2},tag=!EqS2used,tag=!Spectating,tag=!Dev] run item replace entity @s hotbar.3 with redstone_block[minecraft:custom_name="First_Aid_Kit"]

execute as @a[scores={EquipmentSlot1=3},tag=!EqS1used,tag=!Spectating,tag=!Dev] run item replace entity @s hotbar.2 with green_shulker_box[minecraft:custom_name="HE_Grenade"]
execute as @a[scores={EquipmentSlot2=3},tag=!EqS2used,tag=!Spectating,tag=!Dev] run item replace entity @s hotbar.3 with green_shulker_box[minecraft:custom_name="HE_Grenade"]

execute as @a[scores={EquipmentSlot1=4},tag=!EqS1used,tag=!Spectating,tag=!Dev] run item replace entity @s hotbar.2 with light_gray_shulker_box[minecraft:custom_name="Smoke_Grenade"]
execute as @a[scores={EquipmentSlot2=4},tag=!EqS2used,tag=!Spectating,tag=!Dev] run item replace entity @s hotbar.3 with light_gray_shulker_box[minecraft:custom_name="Smoke_Grenade"]

execute as @a[scores={EquipmentSlot1=5},tag=!EqS1used,tag=!Spectating,tag=!Dev] run item replace entity @s hotbar.2 with tnt[minecraft:custom_name="Shaped_Charge"]
execute as @a[scores={EquipmentSlot2=5},tag=!EqS2used,tag=!Spectating,tag=!Dev] run item replace entity @s hotbar.3 with tnt[minecraft:custom_name="Shaped_Charge"]