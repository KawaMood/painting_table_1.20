#> pk_painting_table:base/uninstall/remove_specific_features
# Specific: remove features

# Remove current data pack storage
data remove storage pk.pa_ta:data Blocks

# Remove the current data pack from the installed PK data packs list
data remove storage pk.common:data Datapacks[{Name:"Painting Table"}]

# Remove installed version score
scoreboard players reset $pk.pa_ta.version pk.value