execute unless score #game_progress br.main matches 0 run return fail

scoreboard players add #recursion_count br.main 1

# Checking for biome tags is profoundly broken so I have to do it this way ¯\_(ツ)_/¯
execute in br:the_arena run forceload add ~ ~
execute in br:the_arena run forceload remove ~ ~-10000
execute store result score #success br.main if score #recursion_count br.main matches ..3 in br:the_arena if biome ~ ~ ~ #minecraft:is_ocean
$execute if score #success br.main matches 1 positioned ~ ~ ~10000 run return run function br:zprivate/game/start {distance:$(distance)}
forceload remove ~ ~

advancement revoke @a everything
recipe take @a *

$execute store result score #spreadplayers_success br.main as @a[tag=br.player] in br:the_arena run spreadplayers ~ ~ 0 $(distance) true @s
execute if score #spreadplayers_success br.main matches 0 in br:the_arena run setblock ~ 62 ~ dirt
execute if score #spreadplayers_success br.main matches 0 in br:the_arena run tp @a[tag=br.player] ~ 63 ~
scoreboard players enable @a[tag=br.player] reroll
scoreboard players set #game_progress br.main 1

tellraw @a "Game will start in 20 seconds!"
effect give @a[tag=br.player] slowness 20 10
effect give @a[tag=br.player] instant_health 20 10
effect give @a[tag=br.player] saturation 20 10
effect give @a[tag=br.player] resistance 20 10
execute as @a[tag=br.player] run attribute @s generic.jump_strength modifier add d8f04f59-ee03-4af2-a861-90c4995b4227 "br.spawning" -1 add_multiplied_total
execute as @a[tag=br.player] run attribute @s generic.movement_speed modifier add d8f04f59-ee03-4af2-a861-90c4995b4228 "br.spawning" -1 add_multiplied_total
#execute as @a[tag=br.player] run attribute @s generic.gravity modifier add d8f04f59-ee03-4af2-a861-90c4995b4229 "br.spawning" -1 add_multiplied_total

gamemode adventure @a[tag=br.player]

bossbar set br:info players @a
bossbar set br:info name {"text":"Setting up game...","color":"green"}
bossbar set br:info max 400
execute store result bossbar br:info value run scoreboard players set #timer br.main 400

execute in br:the_arena run worldborder set 30000000
execute in br:the_arena run worldborder center ~ ~


data modify storage br:temp phases set from storage br:api phases

execute as @a[tag=!br.player] run function br:zprivate/game/spectate