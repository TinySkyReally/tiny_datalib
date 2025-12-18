scoreboard objectives add tiny_datalib.temp.math dummy
$scoreboard players set #l$(mathvalue) tiny_datalib.temp.math $(mathvalue)

$execute store result score #value tiny_datalib.temp.calc run function tiny_datalib:database/var/get/macro {ENTRY:$(UUID),var:"$(var)",none:0}
$scoreboard players operation #value tiny_datalib.temp.calc $(math) #l$(mathvalue) tiny_datalib.temp.calc

$data modify storage tiny_datalib:database setmacro.ENTRY set value $(UUID)
$data modify storage tiny_datalib:database setmacro.var set value $(var)
execute store result storage tiny_datalib:database setmacro.value int 1 run scoreboard players get #value tiny_datalib.temp.calc

function tiny_datalib:database/var/set/macro with storage tiny_datalib:database setmacro
return run scoreboard players get #value tiny_datalib.temp.calc
return fail