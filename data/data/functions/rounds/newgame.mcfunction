execute as @r[tag=MatchMaking,limit=1,team=!Red,team=!Blue] run team join Red @s
execute as @r[tag=MatchMaking,limit=1,team=!Red,team=!Blue] run team join Blue @s
execute as @r[tag=MatchMaking,limit=1,team=!Red,team=!Blue] run team join Red @s
execute as @r[tag=MatchMaking,limit=1,team=!Red,team=!Blue] run team join Blue @s
execute as @r[tag=MatchMaking,limit=1,team=!Red,team=!Blue] run team join Red @s
execute as @r[tag=MatchMaking,limit=1,team=!Red,team=!Blue] run team join Blue @s
execute as @a[team=Red] run tag @s remove MatchMaking
execute as @a[team=Blue] run tag @s remove MatchMaking
scoreboard players set Red RoundWins 0
scoreboard players set Blue RoundWins 0

function data:rounds/start