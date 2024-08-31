gamemode spectator @s
attribute @s generic.jump_strength modifier remove d8f04f59-ee03-4af2-a861-90c4995b4227
attribute @s generic.movement_speed modifier remove d8f04f59-ee03-4af2-a861-90c4995b4228
bossbar set br:info players @a

tag @s remove br.player
tag @s add br.spectator

tp @s @r[tag=br.player]