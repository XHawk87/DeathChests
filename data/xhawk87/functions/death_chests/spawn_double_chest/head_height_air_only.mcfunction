# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

# Check for empty blocks in the 4 surrounding tiles
scoreboard players set Pos temp 0

execute if block ~-1 ~ ~ minecraft:air run scoreboard players set Pos temp 4
execute if block ~ ~ ~1 minecraft:air run scoreboard players set Pos temp 3
execute if block ~1 ~ ~ minecraft:air run scoreboard players set Pos temp 2
execute if block ~ ~ ~-1 minecraft:air run scoreboard players set Pos temp 1

# If the tile the player's head is in is not air, just place it in any non-bedrock tile at ground height
execute unless block ~ ~ ~ minecraft:air run scoreboard players set Pos temp 0

execute if score Pos temp matches 1 run function xhawk87:death_chests/spawn_double_chest/north
execute if score Pos temp matches 2 run function xhawk87:death_chests/spawn_double_chest/east
execute if score Pos temp matches 3 run function xhawk87:death_chests/spawn_double_chest/south
execute if score Pos temp matches 4 run function xhawk87:death_chests/spawn_double_chest/west

execute if score Pos temp matches 0 positioned ~ ~-1 ~ run function xhawk87:death_chests/spawn_double_chest/foot_height_non_bedrock
