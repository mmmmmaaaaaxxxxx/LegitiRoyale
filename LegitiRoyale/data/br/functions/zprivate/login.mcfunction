scoreboard players set @s br.login 0
clear
tag @s remove br.winner
tag @s remove br.player
effect clear @s
scoreboard players reset @s reroll

gamemode adventure
execute if score #game_progress br.main matches 1.. run function br:zprivate/game/spectate
execute if score #game_progress br.main matches 0 run function br:zprivate/game/not_spectate
