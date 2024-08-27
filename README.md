README ISNT DONE
# LegitiRoyale
Battle royale template for the legitimoose.com Minecraft server.

This ONLY WORKS FOR LEGITIMOOSE.COM and not on any other minecraft server.

# API
## Phases
You can create phases by creating a list of maps in the storage br:api phases. This list must exist for the game to work.

The list should contain maps with the keys "name", "duration", and "command." These signify the distinct phases of the game, where name is the name of the phase, duration is an integer number of ticks for the length of the phase, and command is a command to be run at the start of the phase. Set "command" to a valid command or "" to avoid breaking the datapack. The phases run in the order they appear in the list. 

Example: /data modify storage br:api phases set value [{name:"Grace Period",duration:3600,command:"function gen:phase/grace_period"},{name:"Battle!",duration:6000,command:"function gen:phase/battle"},{name:"Deathmatch",duration:12000,command:"function gen:phase/deathmatch"}]

## Functions


## Tags
Players with the tag "br.player" when the game starts will be placed into the game.

Players without that tag will be given the tag "br.spectator" and will be set to spectate the game. They will also receive this tag and lose br.player if they die during the game.

At the end of the game, all remaining players will be given the tag "br.winner"

## Scoreboards
The scoreboard #game_progress for the objective br.main contains values based on what state the game is in.

0 - The game hasnt started yet.

1 - The game is still setting up (players can't move and the world is given time to load.)

2 - The game is actively happening (your set phases happen during this time.)

3 - The game is over (someone has won.)

4 - The world is restarting.
