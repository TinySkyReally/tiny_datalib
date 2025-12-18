# function tiny_datalib:database/data/set

## DATABASE SET SAVE FUNCTION
#
## Example:
# function tiny_datalib:database/data/set {with:"entity @s", data:""} ## Sets save from UUID to data from storage tiny_datalib:database save
##
#
## Return types:
# -1 -- UUID doesnt exists (NO ERROR - UUID ISNT INSIDE OF SAVES)
# 1 -- Sucessful (NO ERROR)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


$data modify storage tiny_datalib:database getsave.UUID set from $(with) UUID
$data modify storage tiny_datalib:database getsave.data set value $(data)

return run function tiny_datalib:database/data/set/macro_1 with storage tiny_datalib:database getsave
return fail