#Update coords to first HardPoint location
kill @e[type=villager,tag=HardPointMarker]
title @a title {"text":"HardPoint is at Pig Factory!","bold":true,"color":"white","scale":0.3}
summon minecraft:villager -1875 72 -76 {Tags:["HardPointMarker"],Invulnerable:1b,CustomNameVisible:false,Glowing:1b}
#summon minecraft:villager -5 72 66 {Tags:["HardPointMarker"],Invulnerable:1b,CustomNameVisible:false,Glowing:1b}
