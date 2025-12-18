# function tiny_datalib:database/entry/add

## DATABASE ADD ENTRY FUNCTION
#
## Example:
# function tiny_datalib:database/entry/add with entity @s ## Adds a new entry to database with key as a players UUID
##
#
## Return types:
# -1 -- UUID already exists (NO ERROR - UUID ALREADY EXISTS INSIDE OF SAVES)
# 1 -- Sucessful (NO ERROR)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


$execute if data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return -1
$data modify storage tiny_datalib:database saves append value {UUID:$(UUID),DATA:{},VARS:{}}
$execute if data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return 1
$execute unless data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return fail
return fail