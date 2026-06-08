#> keepmyinventory:_/main/restore_items/do
#--------------------
# ../pre_death
#--------------------

# restore items:
data modify storage deathdef:in restore_items.items set from storage deathdef:hook pre_call.items
execute if score *pre_death.restore_vanish _keepmyinventory matches 1 run data modify storage deathdef:in restore_items.items append from storage deathdef:hook pre_call.vanishing_items[]
function deathdef:util/restore_items

# only pass vanishing_items if let_vanish:
execute unless entity @s[tag=keepmyinventory.let_vanish] run data modify storage deathdef:hook pre_call.vanishing_items set value []

data modify storage deathdef:hook pre_call.items set value []


