execute as @a[tag=!P.Reloading] unless score @s P.Ammo matches 1.. run scoreboard players reset @s Time
execute as @a[tag=!P.Reloading] unless score @s P.Ammo matches 1.. run tag @s add P.Reloading
execute as @a[tag=P.Reloading] run item replace entity @s hotbar.0 with barrier 1
execute as @a[tag=P.Reloading] if score @s Time = @s P.ReloadTime run scoreboard players operation @s P.Ammo = @s P.MaxAmmo
execute as @a[tag=P.Reloading] run attribute @s generic.movement_speed modifier add 0-0-0-1-0 "reload" -0.5 add_multiplied_total
execute as @a[tag=P.Reloading] if score @s Time = @s P.ReloadTime run attribute @s generic.movement_speed modifier remove 0-0-0-1-0
execute as @a[tag=P.Reloading] if score @s Time = @s P.ReloadTime run tag @s remove P.Reloading

execute as @a[tag=!S.Reloading] unless score @s S.Ammo matches 1.. run scoreboard players reset @s Time
execute as @a[tag=!S.Reloading] unless score @s S.Ammo matches 1.. run tag @s add S.Reloading
execute as @a[tag=S.Reloading] run item replace entity @s hotbar.1 with barrier 1
execute as @a[tag=S.Reloading] if score @s Time = @s S.ReloadTime run scoreboard players operation @s S.Ammo = @s S.MaxAmmo
execute as @a[tag=S.Reloading] run attribute @s generic.movement_speed modifier add 0-0-0-1-1 "reload" -0.5 add_multiplied_total
execute as @a[tag=S.Reloading] if score @s Time = @s S.ReloadTime run attribute @s generic.movement_speed modifier remove 0-0-0-1-1
execute as @a[tag=S.Reloading] if score @s Time = @s S.ReloadTime run tag @s remove S.Reloading