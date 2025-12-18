# function tiny_datalib:database/data/get_full

## DATABASE GET WHOLE SAVE FUNCTION
#
## Example:
# function tiny_datalib:database/data/get_full with entity @s ## Gets save from UUID and puts it inside storage tiny_datalib:database output
##
#
## Return types:
# -1 -- UUID doesnt exists (NO ERROR - UUID ISNT INSIDE OF SAVES)
# 1 -- Sucessful (NO ERROR)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


$execute unless data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return -1
$data modify storage tiny_datalib:database output set from storage tiny_datalib:database saves[{UUID:$(UUID)}].DATA
$execute if data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return 1
$execute unless data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return fail
return fail