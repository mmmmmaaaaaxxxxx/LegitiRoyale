execute if score #game_count br.main matches 0..4 run scoreboard players set #game_progress br.main 0
execute if score #game_count br.main matches 0..4 run gamemode adventure @a
execute if score #game_count br.main matches 0..4 run kill @a
execute if score #game_count br.main matches 0..4 run return 0
scoreboard players set #game_progress br.main 4
bossbar set br:info players
#execute in br:the_arena run summon marker 0 0 0 {Tags:[br.world_reload_tracker]}