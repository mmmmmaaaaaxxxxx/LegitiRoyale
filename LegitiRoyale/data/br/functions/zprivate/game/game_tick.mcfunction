execute store result score #timer_copy br.main store result bossbar br:info value run scoreboard players remove #timer br.main 1


execute store result score #temp br.main run scoreboard players operation #timer_copy br.main /= #20 br.const
execute store result storage br:temp scoreboard.seconds_left int 1 run scoreboard players operation #temp br.main %= #60 br.const
execute if score #temp br.main matches 0..9 run data modify storage br:temp scoreboard.extra_second_zero set value "0"
execute unless score #temp br.main matches 0..9 run data modify storage br:temp scoreboard.extra_second_zero set value ""

execute store result score #temp br.main run scoreboard players operation #timer_copy br.main /= #60 br.const
execute store result storage br:temp scoreboard.minutes_left int 1 run scoreboard players operation #temp br.main %= #60 br.const
execute if score #temp br.main matches 0..9 run data modify storage br:temp scoreboard.extra_minute_zero set value "0"
execute unless score #temp br.main matches 0..9 run data modify storage br:temp scoreboard.extra_minute_zero set value ""

execute store result storage br:temp scoreboard.hours_left int 1 run scoreboard players operation #timer_copy br.main /= #60 br.const


execute as @a[scores={br.died=1..}] run function br:zprivate/game/spectate

execute store result storage br:temp scoreboard.player_count int 1 store result score #player_count br.main if entity @a[tag=br.player]
execute if score #player_count br.main matches ..1 if score #game_progress br.main matches 2 run function br:zprivate/game/won

function br:zprivate/game/sidebar_macro with storage br:temp scoreboard