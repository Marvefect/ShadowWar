execute in data:map run kill @e[tag=DoorForce]
execute in data:map run kill @e[tag=Station]
execute in data:map run summon interaction -18.7 1 30.5 {height:2,Tags:[DoorForce, Door1]}
execute in data:map run summon interaction -25.3 1 22.5 {height:2,Tags:[DoorForce, Door2]}
execute in data:map run summon interaction 20.3 1 22.5 {height:2,Tags:[DoorForce, Door3]}
execute in data:map run summon interaction 26.5 1 20.3 {height:2,Tags:[DoorForce, Door4]}
execute in data:map run summon interaction -15.5 2.0 -2.5 {height:1,width:2.2f,Tags:[Station, StA]}
execute in data:map run summon interaction 22.5 2.0 -9.5 {height:1,width:2.2f,Tags:[Station, StB]}

execute in data:map run setblock -20 3 30 white_concrete
execute in data:map run setblock -25 3 22 white_concrete
execute in data:map run setblock 19 3 22 white_concrete
execute in data:map run setblock 26 3 19 white_concrete
execute in data:map run fill -6 1 -27 -6 3 -29 light_blue_stained_glass
execute in data:map run fill 6 1 -27 6 3 -29 light_blue_stained_glass
execute in data:map run fill -6 1 27 -6 3 29 red_stained_glass
execute in data:map run fill 6 1 27 6 3 29 red_stained_glass
scoreboard players set Round GameStatus 0
scoreboard players set Round TimeLeft 250
scoreboard players set Hack TimeLeft 45
execute in data:map run tp @a[team=Red] 0.0 5.0 28.0
execute in data:map run tp @a[team=Blue] 0.0 5.0 -28.0
scoreboard players set @a Health 1000
execute as @a run scoreboard players operation @s P.Ammo = @s P.MaxAmmo
execute as @a run scoreboard players operation @s S.Ammo = @s S.MaxAmmo