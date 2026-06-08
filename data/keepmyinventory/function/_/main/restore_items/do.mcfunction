#> keepmyinventory:_/main/restore_items/do
#--------------------
# ../pre_death
#--------------------

# restore items:
data modify storage deathdef:in restore_items.items set from storage deathdef:hook pre_call.items
execute if score *pre_death.restore_vanish _keepmyinventory matches 1 run data modify storage deathdef:in restore_items.items append from storage deathdef:hook pre_call.vanishing_items[]
function deathdef:util/restore_items

data modify storage deathdef:hook pre_call.items set value []


