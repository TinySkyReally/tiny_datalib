# function tiny_datalib:database/data/set_full

## DATABASE SET WHOLE SAVE FUNCTION
#
## Example:
# function tiny_datalib:database/data/set_full with entity @s ## Sets save from UUID to data from storage tiny_datalib:database save
##
#
## Return types:
# -1 -- UUID doesnt exists (NO ERROR - UUID ISNT INSIDE OF SAVES)
# 1 -- Sucessful (NO ERROR)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


$execute unless data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return -1
$data modify storage tiny_datalib:database saves[{UUID:$(UUID)}].DATA set from storage tiny_datalib:database save
$execute if data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return 1
$execute unless data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return fail
return fail