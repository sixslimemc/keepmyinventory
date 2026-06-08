#> keepmyinventory:_/main/restore_xp/do
#--------------------
# ../pre_death
#--------------------

function keepmyinventory:_/main/restore_xp/add with storage deathdef:hook pre_call

data modify storage deathdef:hook pre_call.xp set value 0