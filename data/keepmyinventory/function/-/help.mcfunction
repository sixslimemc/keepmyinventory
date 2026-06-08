#> keepmyinventory :-/ help

data modify storage six:in sourced_message.lines append value {text:"", color:white, extra:[{text:"Use "}, {text:"/tag", color:aqua}, {text:" to add & remove these tags to players:"}]}
data modify storage six:in sourced_message.lines append value {text:"", color:gray, extra:[{text:" "}, {text:"keepmyinventory.items", color:yellow}, {text:" - ", color:gray}, {text:"Items are kept on death."}]}
data modify storage six:in sourced_message.lines append value {text:"", color:white, extra:[{text:" "}, {text:"keepmyinventory.xp", color:yellow}, {text:" - ", color:gray}, {text:"XP is kept on death."}]}
data modify storage six:in sourced_message.lines append value {text:"", color:gray, extra:[{text:" "}, {text:"keepmyinventory.let_vanish", color:yellow}, {text:" - ", color:gray}, {text:"Modifies "}, {text:"keepmyinventory.items", color:gold}, {text:" to ignore vanishing items."}]}
data modify storage six:in sourced_message.lines append value {text:"", color:gray, extra:[{text:" "}, {text:"keepmyinventory.drop_vanish", color:yellow}, {text:" - ", color:gray}, {text:"Items that would vanish are always dropped instead."}]}

data modify storage six:in sourced_message.source set value "keepmyinventory:-/help"
function six:text/format/sourced_message
tellraw @s {storage:"six:out", nbt:"sourced_message.result", interpret:true}