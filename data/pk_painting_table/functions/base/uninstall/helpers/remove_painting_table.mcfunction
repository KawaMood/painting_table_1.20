#> pk_painting_table:base/uninstall/helpers/remove_painting_table

# Set scores
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id

# Remove block
setblock ~ ~ ~ air

# Remove entities
kill @e[type=#pk_painting_table:custom_block/components,tag=pk.pa_ta.painting_table.component,predicate=pk_painting_table:scores/custom_block/component_id_matching,distance=..20]

# Remove forceload
forceload remove ~ ~