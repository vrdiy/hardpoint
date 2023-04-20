# hardpoint
data pack for minecraft to create a hardpoint style game mode from Call Of Duty


## Setup:

To integrate into your map, you will need to modify the following mcfunctions:
grotto.mcfunction
office.mcfunction
summonpoint.mcfunction
These functions have hardcoded locations which you will want to change for your map.

You will also want to add ways for your players to join teams, you can use a redstone activated command block with the following command:
`function hardpoint:joinred`

## Starting a match:
To start the first match you will need to run the following commands:
```
function hardpoint:init
function hardpoint:start
```
Once the match ends, to start a new match you simply run:
`function hardpoint:start`

To end Hardpoint and clean up run the following command:
`function hardpoint:stop`

After `hardpoint:init` has been ran once, it will not need to be ran again unless `hardpoint:stop` has been called.

## Additional Info
If you need to end a game early you can run `hardpoint:reset` to restart the game clock and then run `hardpoint:start` when ready.
