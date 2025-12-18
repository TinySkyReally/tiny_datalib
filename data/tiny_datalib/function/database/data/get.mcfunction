# function tiny_datalib:database/data/get

## DATABASE GET SAVE FUNCTION
#
## Example:
# function tiny_datalib:database/data/get {with:"entity @s", data:""} ## Gets save from UUID and puts it inside storage tiny_datalib:database output
##
#
## Return types:
# -1 -- UUID doesnt exists (NO ERROR - UUID ISNT INSIDE OF SAVES)
# -2 -- DATA doesnt exists (NO ERROR - DATA DOESNT EXIST)
# 1 -- Sucessful (NO ERROR)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


$data modify storage tiny_datalib:database getsave.UUID set from $(with) UUID
$data modify storage tiny_datalib:database getsave.data set value $(data)

return run function tiny_datalib:database/data/get/macro_1 with storage tiny_datalib:database getsave
return fail