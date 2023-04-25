#> pk_painting_table:blocks/painting_table/place/prepare_entities/decorative_part/3
# Faces: Bottom - South - East
# FacesParts: bottom_tr - south_br - east_bl

# Set component id score to link entities
scoreboard players operation @s pk.custom_block.component.id = $next pk.custom_block.component.id

# Add tags
tag @s add pk.custom_block
tag @s add pk.custom_block.component
tag @s add pk.custom_block.decorative
tag @s add pk.pa_ta.painting_table
tag @s add pk.pa_ta.painting_table.component
tag @s add pk.pa_ta.painting_table.decorative
tag @s add pk.part_3

# Set data 
data merge entity @s {item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;16,11,1,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWYyMDljNzczMjM2MmJiODAyMjY3NjdjOWY4ZTdiMzJlNmVkNzYyMjIyYWZkNTY0MzI0ZWVhN2U0N2U2YTJhIn19fQ=="}]}}}},transformation:{translation:[0.7505f,-0.5005f,0.7505f],scale:[1.002f,1.002f,1.002f]}}