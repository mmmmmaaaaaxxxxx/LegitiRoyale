data remove storage br:temp phases[0]
execute if data storage br:temp phases[0] run function br:zprivate/phase/loop with storage br:temp phases[0]

execute unless data storage br:temp phases[0] run function br:zprivate/game/won