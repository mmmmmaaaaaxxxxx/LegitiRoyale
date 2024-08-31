execute if score #game_progress br.main matches 1 run function br:zprivate/phase/setup_tick
execute if score #game_progress br.main matches 2..3 run function br:zprivate/game/game_tick
execute if score #game_progress br.main matches 4 run function br:zprivate/phase/reset_map_tick

execute as @a unless score @s br.login matches 0 run function br:zprivate/login

scoreboard players set @a br.died 0

execute in br:the_arena unless entity @e[type=marker,tag=br.world_reload_tracker,x=0] run scoreboard players set #game_progress br.main 0
execute in br:the_arena unless entity @e[type=marker,tag=br.world_reload_tracker,x=0] run scoreboard players set #game_count br.main 0
execute in br:the_arena positioned -100000 64 0 run kill @e[distance=..250,type=!marker]