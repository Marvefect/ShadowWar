particle totem_of_undying ~ ~ ~ 0 0 0 0 5
execute if block ~ ~ ~ air positioned ~ ~-1.35 ~ unless entity @e[dx=0.75,dy=0.75,dz=0.75,type=!armor_stand,type=!item,type=!item_frame,type=!interaction,type=!block_display] positioned ^ ^ ^1 positioned ~ ~1.35 ~ run function data:weapons/ray

execute if score @s[nbt={SelectedItemSlot:0},team=Red] PrimaryWeapon matches 1..4 unless entity @s[dx=0.8,dy=0.8,dz=0.8] run scoreboard players operation @p[dx=0.75,dy=0.75,dz=0.75,team=Blue] Health -= @s P.Damage
execute if score @s[nbt={SelectedItemSlot:1},team=Red] SecondaryWeapon matches 1..3 unless entity @s[dx=0.8,dy=0.8,dz=0.8] run scoreboard players operation @p[dx=0.75,dy=0.75,dz=0.75,team=Blue] Health -= @s S.Damage
execute if score @s[nbt={SelectedItemSlot:0},team=Blue] PrimaryWeapon matches 1..4 unless entity @s[dx=0.8,dy=0.8,dz=0.8] run scoreboard players operation @p[dx=0.75,dy=0.75,dz=0.75,team=Red] Health -= @s P.Damage
execute if score @s[nbt={SelectedItemSlot:1},team=Blue] SecondaryWeapon matches 1..3 unless entity @s[dx=0.8,dy=0.8,dz=0.8] run scoreboard players operation @p[dx=0.75,dy=0.75,dz=0.75,team=Red] Health -= @s S.Damage
execute if entity @p[dx=0.75,dy=0.75,dz=0.75,scores={Health=..0}] run tellraw @a [{"selector":"@p[dx=0.75,dy=0.75,dz=0.75,scores={Health=..0}]"},{"text":" was killed by ","color": "white"},{"selector":"@s"}]
execute if entity @p[dx=0.75,dy=0.75,dz=0.75] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.5
execute if entity @s[team=Red] unless entity @s[dx=0.8,dy=0.8,dz=0.8] run damage @p[dx=0.75,dy=0.75,dz=0.75,team=Blue] 0.5 player_attack
execute if entity @s[team=Blue] unless entity @s[dx=0.8,dy=0.8,dz=0.8] run damage @p[dx=0.75,dy=0.75,dz=0.75,team=Red] 0.5 player_attack
execute if entity @p[dx=0.75,dy=0.75,dz=0.75,scores={Health=..0}] run xp add @s 5 points
execute if entity @p[dx=0.75,dy=0.75,dz=0.75,scores={Health=..0}] run kill @p[dx=0.75,dy=0.75,dz=0.75,scores={Health=..0}]