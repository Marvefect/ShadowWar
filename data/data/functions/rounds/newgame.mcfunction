execute as @r[tag=MatchMaking,limit=1,team=!Red,team=!Blue] run team join Red @s
execute as @r[tag=MatchMaking,limit=1,team=!Red,team=!Blue] run team join Blue @s
execute as @r[tag=MatchMaking,limit=1,team=!Red,team=!Blue] run team join Red @s
execute as @r[tag=MatchMaking,limit=1,team=!Red,team=!Blue] run team join Blue @s
execute as @r[tag=MatchMaking,limit=1,team=!Red,team=!Blue] run team join Red @s
execute as @r[tag=MatchMaking,limit=1,team=!Red,team=!Blue] run team join Blue @s
execute as @a[team=Red] run tag @s remove MatchMaking
execute as @a[team=Blue] run tag @s remove MatchMaking

execute in data:map run tp @a[team=Red] 0.0 5.0 28.0
execute in data:map run tp @a[team=Blue] 0.0 5.0 -28.0
execute in data:map run scoreboard players set Red RoundWins 0
execute in data:map run scoreboard players set Blue RoundWins 0
scoreboard players set Round GameStatus 0
scoreboard players set Round TimeLeft 250
execute in data:map run function data:rounds/start