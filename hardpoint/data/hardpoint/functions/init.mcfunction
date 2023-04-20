function hardpoint:cleanup

scoreboard objectives add TeamsScore dummy {"text": "Score", "color": "green"}
scoreboard players set Red_Team TeamsScore 0
scoreboard players set Blue_Team TeamsScore 0
scoreboard objectives setdisplay sidebar TeamsScore
team add red
team add blue
team modify red color red
team modify blue color blue
team join red Red_Team
team join blue Blue_Team

scoreboard objectives add gameloop dummy

scoreboard objectives add numOfTeamsOnPoint dummy
scoreboard players set #numOfTeamsOnPoint numOfTeamsOnPoint 0

scoreboard objectives add isRedOnPoint dummy
scoreboard players set #isRedOnPoint isRedOnPoint 0

scoreboard objectives add isBlueOnPoint dummy
scoreboard players set #isRedOnPoint isBlueOnPoint 0

scoreboard objectives remove Timer
scoreboard objectives add Timer dummy
scoreboard players set #Timer Timer 6000

scoreboard objectives add DisplayTime dummy
scoreboard players set #DisplayTime DisplayTime 0

scoreboard objectives add Divisor dummy
scoreboard players set #Divisor Divisor 20

scoreboard objectives add PointAmount dummy
scoreboard players set #PointAmount PointAmount 1

scoreboard objectives add tempscore dummy

team modify blue nametagVisibility hideForOtherTeams
team modify red nametagVisibility hideForOtherTeams

gamerule doMobSpawning false
gamerule doEntityDrops false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule keepInventory true
#give @a minecraft:iron_sword{Slot:9,Count:1b} 1
#item replace entity @a inventory.12 with diamond_sword



