execute as @a if score @s Health > @s MaxHealth run scoreboard players operation @s Health = @s MaxHealth
# Display current hp
execute as @a if score @s Health matches ..0 run title @s actionbar [{"text":"[][][][][][][][][][]","color":"gray"}]
execute as @a if score @s Health matches 1..5 run title @s actionbar [{"text":"[","color":"red"},{"text":"][][][][][][][][][]","color":"gray"}]
execute as @a if score @s Health matches 6..10 run title @s actionbar [{"text":"[]","color":"red"},{"text":"[][][][][][][][][]","color":"gray"}]
execute as @a if score @s Health matches 11..15 run title @s actionbar [{"text":"[][","color":"red"},{"text":"][][][][][][][][]","color":"gray"}]
execute as @a if score @s Health matches 16..20 run title @s actionbar [{"text":"[][]","color":"red"},{"text":"[][][][][][][][]","color":"gray"}]
execute as @a if score @s Health matches 21..25 run title @s actionbar [{"text":"[][][","color":"red"},{"text":"][][][][][][][]","color":"gray"}]
execute as @a if score @s Health matches 26..30 run title @s actionbar [{"text":"[][][]","color":"red"},{"text":"[][][][][][][]","color":"gray"}]
execute as @a if score @s Health matches 31..35 run title @s actionbar [{"text":"[][][][","color":"red"},{"text":"][][][][][][]","color":"gray"}]
execute as @a if score @s Health matches 36..40 run title @s actionbar [{"text":"[][][][]","color":"red"},{"text":"[][][][][][]","color":"gray"}]
execute as @a if score @s Health matches 41..45 run title @s actionbar [{"text":"[][][][][","color":"red"},{"text":"][][][][][]","color":"gray"}]
execute as @a if score @s Health matches 46..50 run title @s actionbar [{"text":"[][][][][]","color":"red"},{"text":"[][][][][]","color":"gray"}]
execute as @a if score @s Health matches 51..55 run title @s actionbar [{"text":"[][][][][][","color":"red"},{"text":"][][][][]","color":"gray"}]
execute as @a if score @s Health matches 56..60 run title @s actionbar [{"text":"[][][][][][]","color":"red"},{"text":"[][][][]","color":"gray"}]
execute as @a if score @s Health matches 61..65 run title @s actionbar [{"text":"[][][][][][][","color":"red"},{"text":"][][][]","color":"gray"}]
execute as @a if score @s Health matches 66..70 run title @s actionbar [{"text":"[][][][][][][]","color":"red"},{"text":"[][][]","color":"gray"}]
execute as @a if score @s Health matches 71..75 run title @s actionbar [{"text":"[][][][][][][][","color":"red"},{"text":"][][]","color":"gray"}]
execute as @a if score @s Health matches 76..80 run title @s actionbar [{"text":"[][][][][][][][]","color":"red"},{"text":"[][]","color":"gray"}]
execute as @a if score @s Health matches 81..85 run title @s actionbar [{"text":"[][][][][][][][][","color":"red"},{"text":"][]","color":"gray"}]
execute as @a if score @s Health matches 86..90 run title @s actionbar [{"text":"[][][][][][][][][]","color":"red"},{"text":"[]","color":"gray"}]
execute as @a if score @s Health matches 91..95 run title @s actionbar [{"text":"[][][][][][][][][][","color":"red"},{"text":"]","color":"gray"}]
execute as @a if score @s Health matches 96..100 run title @s actionbar [{"text":"[][][][][][][][][][]","color":"red"},{"text":""}]

execute as @a if score @s Health matches 101..105 run title @s actionbar [{"text":"[","color":"yellow"},{"text":"][][][][][][][][][]","color":"red"}]
execute as @a if score @s Health matches 106..110 run title @s actionbar [{"text":"[]","color":"yellow"},{"text":"[][][][][][][][][]","color":"red"}]
execute as @a if score @s Health matches 111..115 run title @s actionbar [{"text":"[][","color":"yellow"},{"text":"][][][][][][][][]","color":"red"}]
execute as @a if score @s Health matches 116..120 run title @s actionbar [{"text":"[][]","color":"yellow"},{"text":"[][][][][][][][]","color":"red"}]
execute as @a if score @s Health matches 121..125 run title @s actionbar [{"text":"[][][","color":"yellow"},{"text":"][][][][][][][]","color":"red"}]
execute as @a if score @s Health matches 126..130 run title @s actionbar [{"text":"[][][]","color":"yellow"},{"text":"[][][][][][][]","color":"red"}]
execute as @a if score @s Health matches 131..135 run title @s actionbar [{"text":"[][][][","color":"yellow"},{"text":"][][][][][][]","color":"red"}]
execute as @a if score @s Health matches 136..140 run title @s actionbar [{"text":"[][][][]","color":"yellow"},{"text":"[][][][][][]","color":"red"}]
execute as @a if score @s Health matches 141..145 run title @s actionbar [{"text":"[][][][][","color":"yellow"},{"text":"][][][][][]","color":"red"}]
execute as @a if score @s Health matches 146..150 run title @s actionbar [{"text":"[][][][][]","color":"yellow"},{"text":"[][][][][]","color":"red"}]
execute as @a if score @s Health matches 151..155 run title @s actionbar [{"text":"[][][][][][","color":"yellow"},{"text":"][][][][]","color":"red"}]
execute as @a if score @s Health matches 156..160 run title @s actionbar [{"text":"[][][][][][]","color":"yellow"},{"text":"[][][][]","color":"red"}]
execute as @a if score @s Health matches 161..165 run title @s actionbar [{"text":"[][][][][][][","color":"yellow"},{"text":"][][][]","color":"red"}]
execute as @a if score @s Health matches 166..170 run title @s actionbar [{"text":"[][][][][][][]","color":"yellow"},{"text":"[][][]","color":"red"}]
execute as @a if score @s Health matches 171..175 run title @s actionbar [{"text":"[][][][][][][][","color":"yellow"},{"text":"][][]","color":"red"}]
execute as @a if score @s Health matches 176..180 run title @s actionbar [{"text":"[][][][][][][][]","color":"yellow"},{"text":"[][]","color":"red"}]
execute as @a if score @s Health matches 181..185 run title @s actionbar [{"text":"[][][][][][][][][","color":"yellow"},{"text":"][]","color":"red"}]
execute as @a if score @s Health matches 186..190 run title @s actionbar [{"text":"[][][][][][][][][]","color":"yellow"},{"text":"[]","color":"red"}]
execute as @a if score @s Health matches 191..195 run title @s actionbar [{"text":"[][][][][][][][][][","color":"yellow"},{"text":"]","color":"red"}]
execute as @a if score @s Health matches 196.. run title @s actionbar [{"text":"[][][][][][][][][][]","color":"yellow"},{"text":""}]

execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 0 run scoreboard players set @s MaxHealth 100
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 0 run scoreboard players set @s Health 100
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 0 run attribute @s generic.movement_speed modifier remove 0-0-0-0-3

execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 1 run scoreboard players set @s MaxHealth 125
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 1 run scoreboard players set @s Health 125
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 1 run attribute @s generic.movement_speed modifier remove 0-0-0-0-3
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 1 run attribute @s generic.movement_speed modifier add 0-0-0-0-3 "Armor" -0.1 multiply

execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 2 run scoreboard players set @s MaxHealth 150
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 2 run scoreboard players set @s Health 150
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 2 run attribute @s generic.movement_speed modifier remove 0-0-0-0-3
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 2 run attribute @s generic.movement_speed modifier add 0-0-0-0-3 "Armor" -0.2 multiply

execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 3 run scoreboard players set @s MaxHealth 175
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 3 run scoreboard players set @s Health 175
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 3 run attribute @s generic.movement_speed modifier remove 0-0-0-0-3
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 3 run attribute @s generic.movement_speed modifier add 0-0-0-0-3 "Armor" -0.3 multiply

execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 4 run scoreboard players set @s MaxHealth 200
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 4 run scoreboard players set @s Health 200
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 4 run attribute @s generic.movement_speed modifier remove 0-0-0-0-3
execute as @a unless score @s PrevArmorType = @s ArmorType if score @s ArmorType matches 4 run attribute @s generic.movement_speed modifier add 0-0-0-0-3 "Armor" -0.5 multiply

execute as @a[scores={ArmorType=0}] run item replace entity @s armor.chest with air
execute as @a[scores={ArmorType=1}] run item replace entity @s armor.chest with leather_chestplate{CustomModelData:1,Unbreakable:1b,display:{Name:'{"text":"II-A Scout","bold":true}'},HideFlags:6} 
execute as @a[scores={ArmorType=2}] run item replace entity @s armor.chest with chainmail_chestplate{CustomModelData:1,Unbreakable:1b,display:{Name:'{"text":"III-A Raider","bold":true}'},HideFlags:6}
execute as @a[scores={ArmorType=3}] run item replace entity @s armor.chest with iron_chestplate{CustomModelData:1,Unbreakable:1b,display:{Name:'{"text":"III-A Frontline","bold":true}'},HideFlags:6}
execute as @a[scores={ArmorType=4}] run item replace entity @s armor.chest with netherite_chestplate{CustomModelData:1,Unbreakable:1b,display:{Name:'{"text":"III Aegis","bold":true}'},HideFlags:6}

execute as @a run scoreboard players operation @s PrevArmorType = @s ArmorType