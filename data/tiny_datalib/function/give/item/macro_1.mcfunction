forceload add 100090 100090
setblock 100090 -64 100090 chest
$item replace block 100090 -64 100090 container.0 with $(id) $(count)
data modify block 100090 -64 100090 Items[{Slot: 0b}].components set from storage tiny_datalib:temp item.components
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.0 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.0 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.1 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.1 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.2 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.2 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.3 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.3 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.4 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.4 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.5 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.5 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.6 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.6 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.7 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.7 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.8 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.8 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.9 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.9 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.10 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.10 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.11 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.11 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.12 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.12 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.13 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.13 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.14 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.14 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.15 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.15 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.16 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.16 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.17 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.17 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.18 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.18 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.19 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.19 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.20 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.20 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.21 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.21 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.22 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.22 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.23 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.23 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.24 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.24 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.25 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.25 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.26 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.26 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.27 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.27 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.28 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.28 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.29 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.29 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.30 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.30 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.31 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.31 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.32 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.32 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.33 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.33 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.34 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.34 from block 100090 -64 100090 container.0
$execute unless items entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.35 * run return run item replace entity @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] container.35 from block 100090 -64 100090 container.0
$execute at @a[nbt={UUID:$(UUID)},limit=1,sort=nearest] anchored eyes positioned ^ ^ ^ run summon item ~ ~ ~ {Item: {id: "minecraft:stone", Count: 1b}, Tags: ["tiny_datalib.item.give"], Owner: $(UUID), Thrower: $(UUID), PickupDelay: 1}
data modify entity @e[type=item, limit=1, sort=nearest, tag=tiny_datalib.item.give] Item set from storage tiny_datalib:temp item
setblock 100090 -64 100090 bedrock
return 1