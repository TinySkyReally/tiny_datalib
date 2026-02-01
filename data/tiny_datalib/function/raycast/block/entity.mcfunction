scoreboard objectives add tiny_datalib.temp.total dummy
$execute as @e[type=marker,nbt={UUID:$(raycastUUID)}] at @s run scoreboard players set @s tiny_datalib.temp.total 0

$execute as @e[type=marker,nbt={UUID:$(raycastUUID)}] at @s run return run function tiny_datalib:raycast/block/marker {raycastRange:$(raycastRange),raycastNotFound:$(raycastNotFound)}
