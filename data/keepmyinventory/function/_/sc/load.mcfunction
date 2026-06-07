#> keepmyinventory:_/sc/load
# @ LOAD

scoreboard objectives add _keepmyinventory dummy

# PLAYER TAGS:
# .items
# .xp
# .let_vanish
# .drop_vanish

execute unless score *init _keepmyinventory matches 1 run function keepmyinventory:_/sc/init