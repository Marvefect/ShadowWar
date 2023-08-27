execute as @a[tag=!P.Reloading,nbt={SelectedItemSlot:0},advancements={data:right_click=true}] run tag @s add P.Reloading
execute as @a[tag=!S.Reloading,nbt={SelectedItemSlot:1},advancements={data:right_click=true}] run tag @s add S.Reloading
execute as @a[tag=!P.Reloading,nbt={SelectedItemSlot:0},advancements={data:right_click=true}] run scoreboard players reset @s Time
execute as @a[tag=!S.Reloading,nbt={SelectedItemSlot:1},advancements={data:right_click=true}] run scoreboard players reset @s Time
execute as @a[tag=P.Reloading] run effect give @s slowness 1 4 true
execute as @a[tag=S.Reloading] run effect give @s slowness 1 4 true

execute as @a[tag=!P.Reloading] unless score @s P.Ammo matches 1.. run scoreboard players reset @s Time
execute as @a[tag=!P.Reloading] unless score @s P.Ammo matches 1.. run tag @s add P.Reloading
execute as @a[tag=P.Reloading] run item replace entity @s hotbar.0 with barrier{display:{Name:'{"text":"Reloading!","color": "white"}'}} 1
execute as @a[tag=P.Reloading] if score @s Time = @s P.ReloadTime run scoreboard players operation @s P.Ammo = @s P.MaxAmmo
execute as @a[tag=P.Reloading] if score @s Time = @s P.ReloadTime run tag @s remove P.Reloading

execute as @a[tag=!S.Reloading] unless score @s S.Ammo matches 1.. run scoreboard players reset @s Time
execute as @a[tag=!S.Reloading] unless score @s S.Ammo matches 1.. run tag @s add S.Reloading
execute as @a[tag=S.Reloading] run item replace entity @s hotbar.1 with barrier{display:{Name:'{"text":"Reloading!","color": "white"}'}} 1
execute as @a[tag=S.Reloading] if score @s Time = @s S.ReloadTime run scoreboard players operation @s S.Ammo = @s S.MaxAmmo
execute as @a[tag=S.Reloading] if score @s Time = @s S.ReloadTime run tag @s remove S.Reloading