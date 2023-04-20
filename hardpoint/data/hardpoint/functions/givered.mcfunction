scoreboard players operation Red_Team TeamsScore += #PointAmount PointAmount
scoreboard players operation #redtemp tempscore += #PointAmount PointAmount
execute if score #redtemp tempscore matches 40.. run function hardpoint:playredsound