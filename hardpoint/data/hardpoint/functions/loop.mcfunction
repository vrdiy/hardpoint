scoreboard players remove #Timer Timer 1
scoreboard players operation #DisplayTime DisplayTime = #Timer Timer
scoreboard players operation #DisplayTime DisplayTime /= #Divisor Divisor
title @a actionbar [  {    "text": "Time: ",    "color": "aqua"  },  {    "score": {      "name": "#DisplayTime",      "objective": "DisplayTime"    },    "color": "green",    "scoreboard": "DisplayTime",    "display": "below_name"  },  {    "text": "s",    "color": "gray"  }]

scoreboard players set #numOfTeamsOnPoint numOfTeamsOnPoint 0
scoreboard players set #isRedOnPoint isRedOnPoint 0
scoreboard players set #isBlueOnPoint isBlueOnPoint 0

execute as @a at @e[tag=HardPointMarker,type=minecraft:villager] if entity @s[distance=..10,team=red] run scoreboard players set #isRedOnPoint isRedOnPoint 1
execute as @a at @e[tag=HardPointMarker,type=minecraft:villager] if entity @s[distance=..10,team=blue] run scoreboard players set #isBlueOnPoint isBlueOnPoint 1
scoreboard players operation #numOfTeamsOnPoint numOfTeamsOnPoint = #isRedOnPoint isRedOnPoint
scoreboard players operation #numOfTeamsOnPoint numOfTeamsOnPoint += #isBlueOnPoint isBlueOnPoint
execute if score #numOfTeamsOnPoint numOfTeamsOnPoint matches 1 run function hardpoint:awardpoints

#tellraw @a [{"text":"Teams on point:","color":"green"},{"score":{"name":"#numOfTeamsOnPoint","objective":"numOfTeamsOnPoint"},"color":"green"}]

execute if score #Timer Timer matches 4200 run function hardpoint:grotto
execute if score #Timer Timer matches 2400 run function hardpoint:office
execute if score #Timer Timer matches 1200 run function hardpoint:finalminute
execute if score #Timer Timer matches ..0 run function hardpoint:reset