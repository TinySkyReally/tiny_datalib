# function tiny_datalib:database/var/set

## DATABASE SET VAR FUNCTION
#
## Example:
# function tiny_datalib:database/var/set {with:"entity @s",var:"",value:0} ## Sets/Creates variable for player. Value must be number!
##
#
## Return types:
# -1 -- UUID doesnt exists (NO ERROR - UUID ISNT INSIDE OF SAVES)
# 1 -- Sucessful (NO ERROR)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


$data modify storage tiny_datalib:database set.UUID set from $(with) UUID
$data modify storage tiny_datalib:database set.var set value $(var)
$data modify storage tiny_datalib:database set.value set value $(value)

return run function tiny_datalib:database/var/set/macro_1 with storage tiny_datalib:database set
return fail