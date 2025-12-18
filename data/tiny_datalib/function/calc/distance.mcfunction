# function tiny_datalib:calc/distance

## DISTANCE CALC FUNCTION
#
## Example:
# data modify storage tiny_datalib:temp distance.UUID1 set from entity <Entity1> UUID ## Entity 1
# data modify storage tiny_datalib:temp distance.UUID2 set from entity <Entity2> UUID ## Entity 2
# function tiny_datalib:calc/distance with storage tiny_datalib:temp distance ## Make sure that both UUID's are valid.
# data modify storage tiny_datalib:temp distance set value {} ## Use if you want to reset function.
##
#
## Return types:
# Any -- Sucessful (NO ERROR)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


$execute unless entity @e[nbt={UUID:$(UUID1)}] run return -1
$execute unless entity @e[nbt={UUID:$(UUID2)}] run return -2

scoreboard objectives add tiny_datalib.temp.calc dummy
scoreboard players set #minus1 tiny_datalib.temp.calc -1

$execute store result score #1 tiny_datalib.temp.calc run data get entity @e[nbt={UUID:$(UUID1)},limit=1,sort=nearest] Pos[0] 1
$execute store result score #2 tiny_datalib.temp.calc run data get entity @e[nbt={UUID:$(UUID1)},limit=1,sort=nearest] Pos[1] 1
$execute store result score #3 tiny_datalib.temp.calc run data get entity @e[nbt={UUID:$(UUID1)},limit=1,sort=nearest] Pos[2] 1

$execute store result score #4 tiny_datalib.temp.calc run data get entity @e[nbt={UUID:$(UUID2)},limit=1,sort=nearest] Pos[0] 1
$execute store result score #5 tiny_datalib.temp.calc run data get entity @e[nbt={UUID:$(UUID2)},limit=1,sort=nearest] Pos[1] 1
$execute store result score #6 tiny_datalib.temp.calc run data get entity @e[nbt={UUID:$(UUID2)},limit=1,sort=nearest] Pos[2] 1

scoreboard players operation #4 tiny_datalib.temp.calc -= #1 tiny_datalib.temp.calc
execute unless score #4 tiny_datalib.temp.calc matches 0.. run scoreboard players operation #4 tiny_datalib.temp.calc *= #minus1 tiny_datalib.temp.calc

scoreboard players operation #5 tiny_datalib.temp.calc -= #2 tiny_datalib.temp.calc
execute unless score #5 tiny_datalib.temp.calc matches 0.. run scoreboard players operation #5 tiny_datalib.temp.calc *= #minus1 tiny_datalib.temp.calc

scoreboard players operation #6 tiny_datalib.temp.calc -= #3 tiny_datalib.temp.calc
execute unless score #6 tiny_datalib.temp.calc matches 0.. run scoreboard players operation #6 tiny_datalib.temp.calc *= #minus1 tiny_datalib.temp.calc

scoreboard players operation #4 tiny_datalib.temp.calc *= #4 tiny_datalib.temp.calc
scoreboard players operation #5 tiny_datalib.temp.calc *= #5 tiny_datalib.temp.calc
scoreboard players operation #6 tiny_datalib.temp.calc *= #6 tiny_datalib.temp.calc

scoreboard players operation #4 tiny_datalib.temp.calc += #5 tiny_datalib.temp.calc
scoreboard players operation #4 tiny_datalib.temp.calc += #6 tiny_datalib.temp.calc

return run scoreboard players get #4 tiny_datalib.temp.calc
return fail