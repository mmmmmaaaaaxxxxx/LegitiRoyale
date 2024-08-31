scoreboard players set #recursion_count br.main 0
$execute if score #game_count br.main matches 0 positioned 00000.0 0.0 0.0 run function br:zprivate/game/start {distance:$(distance),position:00000}
$execute if score #game_count br.main matches 1 positioned 10000.0 0.0 0.0 run function br:zprivate/game/start {distance:$(distance),position:10000}
$execute if score #game_count br.main matches 2 positioned 20000.0 0.0 0.0 run function br:zprivate/game/start {distance:$(distance),position:20000}
$execute if score #game_count br.main matches 3 positioned 30000.0 0.0 0.0 run function br:zprivate/game/start {distance:$(distance),position:30000}
$execute if score #game_count br.main matches 4 positioned 40000.0 0.0 0.0 run function br:zprivate/game/start {distance:$(distance),position:40000}
$execute if score #game_count br.main matches 5 positioned 50000.0 0.0 0.0 run function br:zprivate/game/start {distance:$(distance),position:50000}
$execute if score #game_count br.main matches 6 positioned 60000.0 0.0 0.0 run function br:zprivate/game/start {distance:$(distance),position:60000}
$execute if score #game_count br.main matches 7 positioned 70000.0 0.0 0.0 run function br:zprivate/game/start {distance:$(distance),position:70000}
$execute if score #game_count br.main matches 8 positioned 80000.0 0.0 0.0 run function br:zprivate/game/start {distance:$(distance),position:80000}
$execute if score #game_count br.main matches 9 positioned 90000.0 0.0 0.0 run function br:zprivate/game/start {distance:$(distance),position:90000}
scoreboard players add #game_count br.main 1
