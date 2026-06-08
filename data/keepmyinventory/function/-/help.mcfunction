#> keepmyinventory :-/ help


data modify storage six:in sourced_message.lines append value {text:"", color:aqua, extra:[{text:" "}, {text:"keepmyinventory.items", color:green}, {text:" := ", color:gray}, {text:"Items are kept on death."}]}
data modify storage six:in sourced_message.lines append value {text:"", color:aqua, extra:[{text:" "}, {text:"keepmyinventory.xp", color:green}, {text:" := ", color:gray}, {text:"XP is kept on death."}]}
data modify storage six:in sourced_message.lines append value {text:"", color:aqua, extra:[{text:" "}, {text:"keepmyinventory.let_vanish", color:green}, {text:" := ", color:gray}, {text:""}, {text:"keepmyinventory.items", color:dark_aqua}, {text:" will ignore vanishing items."}]}
data modify storage six:in sourced_message.lines append value {text:"", color:aqua, extra:[{text:" "}, {text:"keepmyinventory.drop_vanish", color:green}, {text:" := ", color:gray}, {text:"Items that would vanish are dropped instead."}]}
data modify storage six:in sourced_message.lines append value {text:""}
data modify storage six:in sourced_message.lines append value {text:"", color:gray, extra:[{text:"/tag "}, {text:"<player>", color:blue}, {text:" add "}, {text:"<tag>", color:green}]}

data modify storage six:in sourced_message.source set value "keepmyinventory:-/help"
function six:text/format/sourced_message
tellraw @s {storage:"six:out", nbt:"sourced_message.result", interpret:true}