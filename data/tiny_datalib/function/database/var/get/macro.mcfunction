# function tiny_datalib:database/var/get/macro

## DATABASE MACRO GET VAR FUNCTION
#
## Example:
# function tiny_datalib:database/var/get/macro {ENTRY:[],var:"",none:0} ## Gets variable from ENTRY. var must be valid and none is the value that you will get if it doesnt exist.
##
#
## Return types:
# Any -- Sucessful (NO ERROR)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


$data modify storage tiny_datalib:database get.UUID set value $(ENTRY)
$data modify storage tiny_datalib:database get.var set value $(var)
$data modify storage tiny_datalib:database get.none set value $(none)

return run function tiny_datalib:database/var/get/macro_1 with storage tiny_datalib:database get
return fail