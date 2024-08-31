$execute if data storage br:temp phases[0] run schedule function br:zprivate/phase/schedule $(duration)t append
$$(command)
#$say $(command)

$bossbar set br:info name "$(name)"
$bossbar set br:info max $(duration)
$scoreboard players set #timer br.main $(duration)

#execute if data storage br:temp phases[0] run function br:zprivate/start/loop with storage br:temp phases[0]