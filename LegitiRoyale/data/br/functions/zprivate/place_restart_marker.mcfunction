# The restart marker can only be selected if the custom dimension exists, so we know the world has
# restarted if the dimension has been deleted, taking the marker with it.

kill @e[tag=br.world_reload_tracker]
execute in br:the_arena run summon marker -100000 0 0 {Tags:["br.world_reload_tracker"]}
execute in br:the_arena run forceload add -100000 0