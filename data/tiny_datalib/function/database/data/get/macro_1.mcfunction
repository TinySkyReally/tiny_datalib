$execute unless data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return -1
$execute unless data storage tiny_datalib:database saves[{UUID:$(UUID)}].DATA.$(data) run return -2
$data modify storage tiny_datalib:database output set from storage tiny_datalib:database saves[{UUID:$(UUID)}].DATA.$(data)
$execute if data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return 1
$execute unless data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return fail
return fail