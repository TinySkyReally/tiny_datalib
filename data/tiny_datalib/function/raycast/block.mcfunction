# function tiny_datalib:raycast/block

## RAYCAST BLOCK FUNCTION
#
## Example:
# function tiny_datalib:raycast/block {range:32,notfound:-1} ## It is not recommended to set range to very high values because of performance, set notfound to value that you want to get if it got out of range and couldn't find anything.
##
#
## Return types:
# Any -- Sucessful (NO ERROR)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


execute as @s at @s anchored eyes positioned ^ ^ ^ run summon marker ^ ^ ^ {Tags:["tiny_datalib.setup","tiny_datalib.raycast.marker"]}
rotate @e[type=marker,tag=tiny_datalib.setup,limit=1,sort=nearest] ~ ~
data modify storage tiny_datalib:temp raycastUUID set from entity @e[type=marker,tag=tiny_datalib.setup,limit=1,sort=nearest] UUID
$data modify storage tiny_datalib:temp raycastRange set value $(range)
$data modify storage tiny_datalib:temp raycastNotFound set value $(notfound)
execute as @e[type=marker,tag=tiny_datalib.setup,limit=1,sort=nearest] at @s unless block ~ ~ ~ air run return 0
tag @e[type=marker,tag=tiny_datalib.setup,limit=1,sort=nearest] remove tiny_datalib.setup
return run function tiny_datalib:raycast/block/entity with storage tiny_datalib:temp
