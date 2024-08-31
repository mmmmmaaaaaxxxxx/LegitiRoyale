tag @a[tag=br.player] add br.winner
tag @a[tag=br.player] remove br.player
effect clear @a

bossbar set br:info players @a
bossbar set br:info name [{"text":"Game over! Winner(s): ","color":"green"},{"selector":"@a[tag=br.winner]","color":"green"}]
bossbar set br:info max 400
execute store result bossbar br:info value run scoreboard players set #timer br.main 400
scoreboard objectives setdisplay sidebar

schedule clear br:zprivate/phase/schedule

scoreboard players set #game_progress br.main 3
schedule function br:zprivate/phase/end 20s