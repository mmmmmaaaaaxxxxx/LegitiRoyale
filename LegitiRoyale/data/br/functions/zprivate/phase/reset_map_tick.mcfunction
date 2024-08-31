#I reset the map by closing the world so the custom dimension is deleted

tag @a remove br.winner


execute as @a[tag=!is_admin,tag=!is_dev] at @s run function br:zprivate/kickplayer
tellraw @a[tag=is_admin] {"color": "red","text": "Please leave the world for 30s so that the game can reset!\nRun /function br:api/override_reset if you dont want the game to reset."}
tellraw @a[tag=is_dev] {"color": "red","text": "Please leave the world for 30s so that the game can reset!\nRun /function br:api/override_reset if you dont want the game to reset."}
