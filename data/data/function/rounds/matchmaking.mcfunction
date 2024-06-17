execute store result score MP1 People if entity @e[tag=MP1] 
execute if score Round GameStatus matches 3 if score Round Time matches 19.. unless score Inter TimeLeft matches ..-1 if score MP1 People matches 2.. run scoreboard players remove Inter TimeLeft 1
execute if score Round GameStatus matches 3 run bossbar set minecraft:1 name [{"text": "Intermission... ","color": "white"},{"score":{"name": "Inter","objective": "TimeLeft"}}]
execute if score Round GameStatus matches 3 if score Inter TimeLeft matches 1 run team join Red @r[tag=MP1,team=!Red,team=!Blue]
execute if score Round GameStatus matches 3 if score Inter TimeLeft matches 1 run team join Blue @r[tag=MP1,team=!Red,team=!Blue]
execute if score Round GameStatus matches 3 if score Inter TimeLeft matches 1 run team join Red @r[tag=MP1,team=!Red,team=!Blue]
execute if score Round GameStatus matches 3 if score Inter TimeLeft matches 1 run team join Blue @r[tag=MP1,team=!Red,team=!Blue]
execute if score Round GameStatus matches 3 if score Inter TimeLeft matches 1 run team join Red @r[tag=MP1,team=!Red,team=!Blue]
execute if score Round GameStatus matches 3 if score Inter TimeLeft matches 1 run team join Blue @r[tag=MP1,team=!Red,team=!Blue]
execute if score Round GameStatus matches 3 if score Inter TimeLeft matches ..0 run function data:rounds/newgame