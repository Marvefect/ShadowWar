effect give @a[tag=Spectating] invisibility 1 1 true
clear @a[tag=Spectating]
gamemode spectator @a[tag=Spectating]
execute as @a[tag=Spectating,team=Red] at @s unless entity @a[team=Red,tag=!Spectating,dx=100,dy=100,dz=100] run spectate @r @a[tag=Spectating,limit=1,sort=random]
execute as @a[tag=Spectating,team=Blue] at @s unless entity @a[team=Blue,tag=!Spectating,dx=100,dy=100,dz=100] run spectate @r @a[tag=Spectating,limit=1,sort=random]

execute as @a[tag=Spectating,team=Red] at @s run spectate @p[team=Red,tag=!Spectating] @a[tag=Spectating,limit=1,sort=random]
execute as @a[tag=Spectating,team=Blue] at @s run spectate @p[team=Blue,tag=!Spectating] @a[tag=Spectating,limit=1,sort=random]