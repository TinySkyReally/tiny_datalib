# function tiny_datalib:database/var/set/macro

## DATABASE MACRO SET VAR FUNCTION
#
## Example:
# function tiny_datalib:database/var/set/macro {ENTRY:[],var:"",value:0} ## Sets/Creates variable for ENTRY. Value must be number!
##
#
## Return types:
# -1 -- ENTRY doesnt exists (NO ERROR - ENTRY ISNT INSIDE OF SAVES)
# 1 -- Sucessful (NO ERROR)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


$data modify storage tiny_datalib:database set.UUID set value $(ENTRY)
$data modify storage tiny_datalib:database set.var set value $(var)
$data modify storage tiny_datalib:database set.value set value $(value)

return run function tiny_datalib:database/var/set/macro_1 with storage tiny_datalib:database set
return fail