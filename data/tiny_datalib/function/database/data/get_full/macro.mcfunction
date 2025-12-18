# function tiny_datalib:database/data/get_full/macro

## DATABASE MACRO GET WHOLE SAVE FUNCTION
#
## Example:
# function tiny_datalib:database/data/get_full/macro {ENTRY:[]} ## Gets save from ENTRY and puts it inside storage tiny_datalib:database output
##
#
## Return types:
# -1 -- ENTRY doesnt exists (NO ERROR - ENTRY ISNT INSIDE OF SAVES)
# 1 -- Sucessful (NO ERROR)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


$execute unless data storage tiny_datalib:database saves[{UUID:$(ENTRY)}] run return -1
$data modify storage tiny_datalib:database output set from storage tiny_datalib:database saves[{UUID:$(ENTRY)}].DATA
$execute if data storage tiny_datalib:database saves[{UUID:$(ENTRY)}] run return 1
$execute unless data storage tiny_datalib:database saves[{UUID:$(ENTRY)}] run return fail
return fail