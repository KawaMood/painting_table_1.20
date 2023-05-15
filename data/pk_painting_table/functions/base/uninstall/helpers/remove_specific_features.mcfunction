# Remove current data pack storage
data remove storage pk.pa_ta:data Blocks

# Remove current data pack scores

# Remove the current data pack from the installed PK data packs list
data remove storage pk.common:data Datapacks[{Name:"Painting Table"}]

# Remove installed version score
scoreboard players reset $pk.pa_ta.version pk.value