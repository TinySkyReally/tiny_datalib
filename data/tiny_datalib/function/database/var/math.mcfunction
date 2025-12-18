# function tiny_datalib:database/var/math

## DATABASE MATH VAR FUNCTION
#
## Example:
# function tiny_datalib:database/var/math {with:"entity @s",var:"",math:"+=",mathvalue:0} ## Calculates variable with math and mathvalue (Make sure that math is valid and mathvalue is number, math examples: +=, -=, =, *= and more... you can find them when using /scoreboard players operation)
##
#
## Return types:
# Any -- Sucessful (NO ERROR - Returned value is what we got when using the math)
# None/Fail -- Something went wrong (ERROR - PLEASE CHECK IF YOU HAVE EVERYTHING CORRECT)
##


$data modify storage tiny_datalib:database math.UUID set from $(with) UUID
$data modify storage tiny_datalib:database math.var set value $(var)
$data modify storage tiny_datalib:database math.math set value $(math)
$data modify storage tiny_datalib:database math.mathvalue set value $(mathvalue)

return run function tiny_datalib:database/var/math/macro_1 with storage tiny_datalib:database math
return fail