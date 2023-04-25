#> pk_painting_table:blocks/painting_table/helpers/update/1_20_rotation/marker_initialize

# Tag the current marker
tag @s add pk.pa_ta.update.forceload_chunk

# Set data from current item
data modify entity @s data.PaintingTable set from storage pk.common:data Temp.Array.Item

# Place entity at the right position
data modify entity @s Pos set from storage pk.common:data Temp.Array.Item.Pos

# Relocate the execution depending on the dimension
execute store result score $temp pk.dimension.id run data get storage pk.common:data Temp.Array.Item.Dimension.id
execute if score $temp pk.dimension.id matches -1 in minecraft:the_nether positioned as @s run function pk_painting_table:blocks/painting_table/helpers/update/1_20_rotation/forceload_custom_block_chunk
execute if score $temp pk.dimension.id matches 0 in minecraft:overworld positioned as @s run function pk_painting_table:blocks/painting_table/helpers/update/1_20_rotation/forceload_custom_block_chunk
execute if score $temp pk.dimension.id matches 1 in minecraft:the_end positioned as @s run function pk_painting_table:blocks/painting_table/helpers/update/1_20_rotation/forceload_custom_block_chunk
execute if score $temp pk.dimension.id matches 100.. at @e[type=marker,tag=pk.dimension.marker,predicate=pk_painting_table:scores/dimension_marker/matching_id] positioned as @s run function pk_painting_table:blocks/painting_table/helpers/update/1_20_rotation/forceload_custom_block_chunk