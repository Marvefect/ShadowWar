execute if score Red RoundWins matches 3 run tellraw @a [{"text": "Red Team","color": "red"},{"text": " Has won the match!","color": "white"}]
execute if score Blue RoundWins matches 3 run tellraw @a [{"text": "Blue Team","color": "blue"},{"text": " Has won the match!","color": "white"}]

execute if score Red RoundWins matches 3 run scoreboard players set Round GameStatus 3
execute if score Blue RoundWins matches 3 run scoreboard players set Round GameStatus 3
execute if score Red RoundWins matches 3 run scoreboard players set Inter TimeLeft 40
execute if score Blue RoundWins matches 3 run scoreboard players set Inter TimeLeft 40

execute in data:lobby if score Red RoundWins matches 3 run tp @a[team=Red] 1 64 -1
execute in data:lobby if score Red RoundWins matches 3 run tp @a[team=Blue] 1 64 -1
execute in data:lobby if score Blue RoundWins matches 3 run tp @a[team=Blue] 1 64 -1
execute in data:lobby if score Blue RoundWins matches 3 run tp @a[team=Red] 1 64 -1

execute if score Red RoundWins matches 3 run scoreboard players add @a[team=Red] Credits 100
execute if score Blue RoundWins matches 3 run scoreboard players add @a[team=Blue] Credits 100
execute if score Red RoundWins matches 3 run scoreboard players add @a[team=Blue] Credits 40
execute if score Blue RoundWins matches 3 run scoreboard players add @a[team=Red] Credits 40

execute if score Red RoundWins matches 3 run team leave @a
execute if score Blue RoundWins matches 3 run team leave @a

execute if score Red RoundWins matches 3 run tag @a remove MP1
execute if score Blue RoundWins matches 3 run tag @a remove MP1

execute if score Red RoundWins matches 3 in overworld run tag @a remove Spectating
execute if score Blue RoundWins matches 3 in overworld run tag @a remove Spectating

execute if score Red RoundWins matches 3 in overworld run gamemode adventure @a[gamemode=spectator]
execute if score Blue RoundWins matches 3 in overworld run gamemode adventure @a[gamemode=spectator]


execute if score Red RoundWins matches 3 in overworld run scoreboard players set Red RoundWins 0
execute if score Blue RoundWins matches 3 in overworld run scoreboard players set Blue RoundWins 0
execute if score Red RoundWins matches 3 in overworld run scoreboard players set Blue RoundWins 0
execute if score Blue RoundWins matches 3 in overworld run scoreboard players set Red RoundWins 0