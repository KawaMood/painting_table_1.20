#> pk_painting_table:blocks/painting_table/helpers/update/1_20_rotation/trigger

# Prepare score
data modify storage pk.common:data Temp.PaintingTable set from entity @s data.PaintingTable
execute store result score $temp pk.custom_block.component.id run data get storage pk.common:data Temp.PaintingTable.id

# Change item display rotation (180° on Y axis)
execute as @e[type=item_display,tag=pk.pa_ta.painting_table,predicate=pk_painting_table:scores/custom_block/component_id_matching,distance=..10] run data modify entity @s transformation merge value {right_rotation:[0f,1f,0f,0f]}

# Unload the targeted chunk
forceload remove ~ ~

# Remove the current entity
kill @s