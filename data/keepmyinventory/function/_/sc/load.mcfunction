#> keepmyinventory:_/sc/load
# @ LOAD

scoreboard objectives add _keepmyinventory dummy



# DEBUG
scoreboard players reset *init _keepmyinventory

execute unless score *init _keepmyinventory matches 1 run function keepmyinventory:_/sc/init