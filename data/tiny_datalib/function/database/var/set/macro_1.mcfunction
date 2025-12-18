scoreboard objectives add tiny_datalib.temp.set dummy
$execute unless data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return -1

# V2 (Better since it can be only a number.)
$scoreboard players set #l$(value) tiny_datalib.temp.set $(value)
$execute store result storage tiny_datalib:database saves[{UUID:$(UUID)}].VARS.$(var) int 1 run scoreboard players get #l$(value) tiny_datalib.temp.set

# V1 (Worse since it can be any type but i want it to be just a Number.)
#$data modify storage tiny_datalib:database saves[{UUID:$(UUID)}].VARS.$(var) set value $(value)

$execute if data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return 1
$execute unless data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return fail
return fail