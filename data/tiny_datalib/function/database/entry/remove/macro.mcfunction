# function tiny_datalib:database/entry/remove/macro

## DATABASE MACRO REMOVE ENTRY FUNCTION
#
## Example:
# function tiny_datalib:database/entry/remove/macro {ENTRY:[]} ## Removes entry from database with key as a ENTRY
##
#
## Return types:
# -1 -- ENTRY doesnt exists (NO ERROR - ENTRY ISNT INSIDE OF SAVES)
# 1 -- Sucessful (NO ERROR)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


$execute unless data storage tiny_datalib:database saves[{UUID:$(ENTRY)}] run return -1
$data remove storage tiny_datalib:database saves[{UUID:$(ENTRY)}]
$execute if data storage tiny_datalib:database saves[{UUID:$(ENTRY)}] run return fail
$execute unless data storage tiny_datalib:database saves[{UUID:$(ENTRY)}] run return 1
return fail