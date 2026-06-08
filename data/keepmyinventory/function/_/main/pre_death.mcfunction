#> keepmyinventory:_/main/pre_death
#--------------------
# _/subscriber/deathdef/pre_call
#--------------------

execute store success score *pre_death.restore_vanish _keepmyinventory if entity @s[tag=!keepmyinventory.let_vanish, tag=!keepmyinventory.drop_vanish]

execute if entity @s[tag=keepmyinventory.xp] run function keepmyinventory:_/main/restore_xp/do
execute if entity @s[tag=keepmyinventory.items] run function keepmyinventory:_/main/restore_items/do

# transfer vanishing_items to items if drop_vanish:
execute if entity @s[tag=keepmyinventory.drop_vanish] run data modify storage deathdef:hook pre_call.items set from storage deathdef:hook pre_call.vanishing_items

scoreboard players reset *pre_death.restore_vanish _keepmyinventory