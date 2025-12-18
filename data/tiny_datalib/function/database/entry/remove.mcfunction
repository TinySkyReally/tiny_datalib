# function tiny_datalib:database/entry/remove

## DATABASE REMOVE ENTRY FUNCTION
#
## Example:
# function tiny_datalib:database/entry/remove with entity @s ## Removes entry from database with key as a players UUID
##
#
## Return types:
# -1 -- UUID doesnt exists (NO ERROR - PLAYER ISNT INSIDE OF SAVES)
# 1 -- Sucessful (NO ERROR)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


$execute unless data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return -1
$data remove storage tiny_datalib:database saves[{UUID:$(UUID)}]
$execute if data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return fail
$execute unless data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return 1
return fail