# function tiny_datalib:database/entry/add/macro

## DATABASE MACRO ADD ENTRY FUNCTION
#
## Example:
# function tiny_datalib:database/entry/add/macro {ENTRY:[]} ## Adds a new entry to database with key as a ENTRY
##
#
## Return types:
# -1 -- ENTRY already exists (NO ERROR - ENTRY ALREADY EXISTS INSIDE OF SAVES)
# 1 -- Sucessful (NO ERROR)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


$execute if data storage tiny_datalib:database saves[{UUID:$(ENTRY)}] run return -1
$data modify storage tiny_datalib:database saves append value {UUID:$(ENTRY),DATA:{},VARS:{}}
$execute if data storage tiny_datalib:database saves[{UUID:$(ENTRY)}] run return 1
$execute unless data storage tiny_datalib:database saves[{UUID:$(ENTRY)}] run return fail
return fail