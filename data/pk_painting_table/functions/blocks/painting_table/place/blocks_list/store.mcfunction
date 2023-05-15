#> pk_painting_table:blocks/painting_table/place/blocks_list/store
# Store the Painting Table info from the controller

data remove storage pk.common:data Temp.PaintingTable

# Set position
data modify storage pk.common:data Temp.PaintingTable.x set from storage pk.common:data Temp.Block.x
data modify storage pk.common:data Temp.PaintingTable.y set from storage pk.common:data Temp.Block.y
data modify storage pk.common:data Temp.PaintingTable.z set from storage pk.common:data Temp.Block.z

# Set version
execute store result storage pk.common:data Temp.PaintingTable.Version int 1 run scoreboard players get $pk.pa_ta.version pk.value

# Set component id score
execute store result storage pk.common:data Temp.PaintingTable.id int 1 run scoreboard players get @s pk.custom_block.component.id

# Set placer
execute store result storage pk.common:data Temp.PaintingTable.Placer.id int 1 run scoreboard players get @a[tag=pk.temp.current,distance=..10,limit=1] pk.player.id
data modify storage pk.common:data Temp.PaintingTable.Placer.UUID set from entity @a[tag=pk.temp.current,distance=..10,limit=1] UUID

# Set dimension
data modify storage pk.common:data Temp.PaintingTable.Dimension set from entity @a[tag=pk.temp.current,distance=..10,limit=1] Dimension

# Store current block's info into the list
data modify storage pk.pa_ta:data Blocks.PaintingTables append from storage pk.common:data Temp.PaintingTable