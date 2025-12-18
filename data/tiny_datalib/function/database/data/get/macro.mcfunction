# function tiny_datalib:database/data/get/macro

## DATABASE MACRO GET SAVE FUNCTION
#
## Example:
# function tiny_datalib:database/data/get/macro {ENTRY:[], data:""} ## Gets save from ENTRY and puts it inside storage tiny_datalib:database output
##
#
## Return types:
# -1 -- ENTRY doesnt exists (NO ERROR - ENTRY ISNT INSIDE OF SAVES)
# -2 -- DATA doesnt exists (NO ERROR - DATA DOESNT EXIST)
# 1 -- Sucessful (NO ERROR)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


$data modify storage tiny_datalib:database getsave.UUID set value $(ENTRY)
$data modify storage tiny_datalib:database getsave.data set value $(data)

return run function tiny_datalib:database/data/get/macro_1 with storage tiny_datalib:database getsave
return fail