execute if score Red RoundWins matches 3 run tellraw @a {"text": "Red team has won!"}
execute if score Blue RoundWins matches 3 run tellraw @a {"text": "Blue team has won!"}
execute if score Red RoundWins matches 3 run scoreboard players set Round GameStatus 3
execute if score Blue RoundWins matches 3 run scoreboard players set Round GameStatus 3
execute if score Red RoundWins matches 3 run scoreboard players set Inter TimeLeft 40
execute if score Blue RoundWins matches 3 run scoreboard players set Inter TimeLeft 40
execute if score Red RoundWins matches 3 run xp add @a[team=Red] 50 points
execute if score Blue RoundWins matches 3 run xp add @a[team=Blue] 50 points
execute if score Red RoundWins matches 3 run xp add @a[team=Blue] 10 points
execute if score Blue RoundWins matches 3 run xp add @a[team=Red] 10 points
execute if score Red RoundWins matches 3 run team leave @a
execute if score Blue RoundWins matches 3 run team leave @a
execute if score Red RoundWins matches 3 in overworld run tag @a remove Spectating
execute if score Blue RoundWins matches 3 in overworld run tag @a remove Spectating
execute if score Red RoundWins matches 3 in overworld run gamemode adventure @a[gamemode=spectator]
execute if score Blue RoundWins matches 3 in overworld run gamemode adventure @a[gamemode=spectator]
execute if score Red RoundWins matches 3 in overworld run tp @a 0 -50 0
execute if score Blue RoundWins matches 3 in overworld run tp @a 0 -50 0
execute if score Red RoundWins matches 3 in overworld run scoreboard players set Red RoundWins 0
execute if score Blue RoundWins matches 3 in overworld run scoreboard players set Blue RoundWins 0
execute if score Red RoundWins matches 3 in overworld run scoreboard players set Blue RoundWins 0
execute if score Blue RoundWins matches 3 in overworld run scoreboard players set Red RoundWins 0
execute if score Red PlayerCount matches 0 if score Blue PlayerCount matches 0 in data:map run function data:rounds/start
bossbar set minecraft:1 players @a
execute if score Round GameStatus matches 0 run bossbar set minecraft:1 max 240
execute if score Round GameStatus matches 1..2 run bossbar set minecraft:1 max 45
execute if score Round GameStatus matches 0 run bossbar set minecraft:1 color white
execute if score Round GameStatus matches 1..2 run bossbar set minecraft:1 color red
execute if score Round GameStatus matches 0 if score Round Time matches 19.. unless score Round TimeLeft matches ..-1 run scoreboard players remove Round TimeLeft 1
execute if score Round GameStatus matches 1..2 if score Round Time matches 19.. unless score Hack TimeLeft matches ..-1 run scoreboard players remove Hack TimeLeft 1
execute if score Round GameStatus matches 0 store result bossbar minecraft:1 value run scoreboard players get Round TimeLeft
execute if score Round GameStatus matches 1 store result bossbar minecraft:1 value run scoreboard players get Hack TimeLeft
execute in data:map store result score Red PlayerCount if entity @a[team=Red,distance=..100,tag=!Spectating]
execute in data:map store result score Blue PlayerCount if entity @a[team=Blue,distance=..100,tag=!Spectating]
execute if score Round GameStatus matches 0 run bossbar set minecraft:1 name [{"score":{"name": "Red","objective": "RoundWins"},"color": "red"},{"text": " 🏆 | 🕑 ","color": "white"},{"score":{"name":"Round","objective":"TimeLeft"},"color": "white"},{"text": " 🕑 | 🏆 ","color": "white"},{"score":{"name": "Blue","objective": "RoundWins"},"color": "blue"}]
execute if score Round GameStatus matches 1..2 run bossbar set minecraft:1 name [{"score":{"name": "Red","objective": "RoundWins"},"color": "red"},{"text": " 🏆 | 🕑 ","color": "white"},{"score":{"name":"Hack","objective":"TimeLeft"},"color": "red"},{"text": " 🕑 | 🏆 ","color": "white"},{"score":{"name": "Blue","objective": "RoundWins"},"color": "blue"}]
execute if score Red PlayerCount matches 0 if score Round TimeLeft matches ..240 if entity @a[team=Blue] unless score Blue RoundWins matches 3 run scoreboard players add Blue RoundWins 1
execute if score Red PlayerCount matches 0 if score Round TimeLeft matches ..240 if entity @a[team=Blue] unless score Blue RoundWins matches 3 unless score Red RoundWins matches 3 run function data:rounds/start
execute if score Blue PlayerCount matches 0 if score Round TimeLeft matches ..240 if entity @a[team=Red] unless score Red RoundWins matches 3 run scoreboard players add Red RoundWins 1
execute if score Blue PlayerCount matches 0 if score Round TimeLeft matches ..240 if entity @a[team=Red] unless score Red RoundWins matches 3 unless score Blue RoundWins matches 3 run function data:rounds/start
execute if score Hack TimeLeft matches -1 if entity @a[team=Red] unless score Red RoundWins matches 3 run scoreboard players add Red RoundWins 1
execute if score Hack TimeLeft matches -1 if entity @a[team=Red] unless score Red RoundWins matches 3 unless score Blue RoundWins matches 3 run function data:rounds/start
execute if score Round TimeLeft matches -1 if entity @a[team=Blue] unless score Blue RoundWins matches 3 run scoreboard players add Blue RoundWins 1
execute if score Round TimeLeft matches -1 if entity @a[team=Blue] unless score Blue RoundWins matches 3 unless score Red RoundWins matches 3 run function data:rounds/start

execute if score Round TimeLeft matches 240 in data:map run fill -6 1 -27 -6 3 -29 air
execute if score Round TimeLeft matches 240 in data:map run fill 6 1 -27 6 3 -29 air
execute if score Round TimeLeft matches 240 in data:map run fill -6 1 27 -6 3 29 air
execute if score Round TimeLeft matches 240 in data:map run fill 6 1 27 6 3 29 air