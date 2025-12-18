$execute unless data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return -1
$data modify storage tiny_datalib:database saves[{UUID:$(UUID)}].DATA.$(data) set from storage tiny_datalib:database save
$execute if data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return 1
$execute unless data storage tiny_datalib:database saves[{UUID:$(UUID)}] run return fail
return fail