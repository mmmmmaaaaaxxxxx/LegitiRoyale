execute store result bossbar br:info value run scoreboard players remove #timer br.main 1
execute if score #timer br.main matches ..0 run function br:zprivate/phase/start


execute as @a[scores={reroll=1..}] at @s run function br:zprivate/game/reroll