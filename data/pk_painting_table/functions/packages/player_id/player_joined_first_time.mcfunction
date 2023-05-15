#> pk_painting_table:packages/player_id/player_joined_first_time

execute unless entity @s[scores={pk.player.id=0..}] run function pk_painting_table:packages/player_id/initialize_player_id