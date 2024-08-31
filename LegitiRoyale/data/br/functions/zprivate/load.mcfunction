execute unless data storage br:api phases run data modify storage br:api phases set value []
scoreboard objectives add br.main dummy
execute unless score #game_count br.main matches 0..9 run scoreboard players set #game_count br.main 0

scoreboard objectives add br.const dummy
scoreboard players set #20 br.const 20
scoreboard players set #60 br.const 60

scoreboard objectives add br.display dummy "Battle Royale"
scoreboard objectives modify br.display numberformat blank
scoreboard players set player_count br.display 2
scoreboard players set time_left br.display 1

bossbar add br:info ""

scoreboard objectives add br.died deathCount
scoreboard objectives add br.login minecraft.custom:minecraft.leave_game
scoreboard objectives add reroll trigger

gamerule spawnChunkRadius 0
gamerule spectatorsGenerateChunks false

schedule function br:zprivate/place_restart_marker 1t