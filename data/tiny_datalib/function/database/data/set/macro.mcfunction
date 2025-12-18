# function tiny_datalib:database/data/set/macro

## DATABASE MACRO SET SAVE FUNCTION
#
## Example:
# function tiny_datalib:database/data/set/macro {ENTRY:[], data:""} ## Sets save from ENTRY to data from storage tiny_datalib:database save
##
#
## Return types:
# -1 -- ENTRY doesnt exists (NO ERROR - ENTRY ISNT INSIDE OF SAVES)
# 1 -- Sucessful (NO ERROR)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


$data modify storage tiny_datalib:database setsave.UUID set value $(ENTRY)
$data modify storage tiny_datalib:database setsave.data set value $(data)

return run function tiny_datalib:database/data/set/macro_1 with storage tiny_datalib:database setsave
return fail