$execute unless data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return fail
$execute if data storage tiny_datalib:database saves[{UUID:$(UUID)}].VARS.$(var) run return run data get storage tiny_datalib:database saves[{UUID:$(UUID)}].VARS.$(var)
$execute unless data storage tiny_datalib:database saves[{UUID:$(UUID)}].VARS.$(var) run return $(none)
$execute unless data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return fail
return fail