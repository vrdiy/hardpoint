scoreboard players operation Blue_Team TeamsScore += #PointAmount PointAmount
scoreboard players operation #bluetemp tempscore += #PointAmount PointAmount
execute if score #bluetemp tempscore matches 40.. run function hardpoint:playbluesound