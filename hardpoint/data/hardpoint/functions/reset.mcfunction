execute if score Red_Team TeamsScore > Blue_Team TeamsScore run title @a title {"text":"Red Team Wins","bold":true,"color":"red","scale":1}
execute if score Blue_Team TeamsScore > Red_Team TeamsScore run title @a title {"text":"Blue Team Wins","bold":true,"color":"blue","scale":1}



scoreboard players set #gameloop gameloop 0
scoreboard players set #Timer Timer 6000
kill @e[type=villager,tag=HardPointMarker]
