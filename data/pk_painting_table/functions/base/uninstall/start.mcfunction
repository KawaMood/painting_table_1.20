#> pk_painting_table:base/uninstall/start
# Uninstall the data pack and remove the common feature if there is no PK data pack installed anymore

# Remove all placed custom blocks
# Will need to be searched within all dimensions
data remove storage pk.common:data Temp.Array
data modify storage pk.common:data Temp.Array.Search set value []
# - Append Custom Blocks
data modify storage pk.common:data Temp.Array.Search append from storage pk.pa_ta:data Blocks.PaintingTables[]
# - Forceload chunks where custom blocks are, then wait for the chunk to be fully loaded
execute if data storage pk.common:data Temp.Array.Search[{}] run function pk_painting_table:base/uninstall/marker_summon_recursive

# Delayed process, assuming the chunk is fully loaded after the delay
schedule function pk_painting_table:base/uninstall/after_1s 1s