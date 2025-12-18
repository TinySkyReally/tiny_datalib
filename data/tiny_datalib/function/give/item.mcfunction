# function tiny_datalib:give/item

## CUSTOM GIVE FUNCTION
#
## Example:
# data modify storage tiny_datalib:temp item set from entity @s SelectedItem ## Data item can be anything as long as it has id and count specified...
# function tiny_datalib:give/item ## No macro isnt used and storage cannot be changed, This function MUST be run as a player.
# data modify storage tiny_datalib:temp item set value {} ## Use if you want to reset function.
##
#
## Return types:
# -1 -- Wrong id (ERROR - MAYBE WRONG ITEM)
# -2 -- Wrong count (ERROR - MAYBE WRONG ITEM)
# -3 -- Wrong UUID (ERROR - FUNCTION MUST BE RUN AS A PLAYER)
# 1 -- Sucessful (NO ERROR)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


data modify storage tiny_datalib:temp item.UUID set from entity @s UUID
execute unless data storage tiny_datalib:temp item.id run return -1
execute unless data storage tiny_datalib:temp item.count run return -2
execute unless data storage tiny_datalib:temp item.UUID run return -3
execute unless data storage tiny_datalib:temp item.components run return run function tiny_datalib:give/item/macro_0 with storage tiny_datalib:temp item
execute if data storage tiny_datalib:temp item.components run return run function tiny_datalib:give/item/macro_1 with storage tiny_datalib:temp item
return fail