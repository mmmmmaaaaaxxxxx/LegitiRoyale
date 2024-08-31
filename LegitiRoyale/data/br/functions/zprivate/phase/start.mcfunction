scoreboard players set #game_progress br.main 2

execute as @a[tag=br.player] run attribute @s generic.jump_strength modifier remove d8f04f59-ee03-4af2-a861-90c4995b4227
execute as @a[tag=br.player] run attribute @s generic.movement_speed modifier remove d8f04f59-ee03-4af2-a861-90c4995b4228
execute as @a[tag=br.player] run attribute @s generic.gravity modifier remove d8f04f59-ee03-4af2-a861-90c4995b4229
gamemode survival @a[tag=br.player]
scoreboard players reset @a reroll

scoreboard objectives setdisplay sidebar br.display

execute if data storage br:temp phases[0] run function br:zprivate/phase/loop with storage br:temp phases[0]