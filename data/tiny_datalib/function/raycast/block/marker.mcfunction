# function tiny_datalib:raycast/block/marker

## MACRO
# - args
# raycastRange - raycast maximum range
# raycastNotFound - raycast return if not found
##
# Marker - @s
##

execute as @s at @s run tp @s ^ ^ ^1
execute as @s at @s run scoreboard players add @s tiny_datalib.temp.total 1
execute as @s at @s unless block ~ ~ ~ air run execute store result storage tiny_datalib:temp return int 1 run scoreboard players get @s tiny_datalib.temp.total
execute as @s at @s unless block ~ ~ ~ air run return run function tiny_datalib:raycast/block/return with storage tiny_datalib:temp
$execute as @s at @s if score @s tiny_datalib.temp.total matches $(raycastRange).. run return run function tiny_datalib:raycast/block/return {return:$(raycastNotFound)}

$return run function tiny_datalib:raycast/block/marker {raycastRange:$(raycastRange),raycastNotFound:$(raycastNotFound)}
