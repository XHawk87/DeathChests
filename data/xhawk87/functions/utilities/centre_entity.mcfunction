# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

# Store the current coordinates of the entity in temporary scoreboard variables
execute store result score XPos temp run data get entity @s Pos[0] 1
execute store result score YPos temp run data get entity @s Pos[1] 1
execute store result score ZPos temp run data get entity @s Pos[2] 1

# Multiply these coordinates by a factor of 10, so we can make adjustments in 10ths of a block
scoreboard players operation XPos temp *= 10 Literal
scoreboard players operation YPos temp *= 10 Literal
scoreboard players operation ZPos temp *= 10 Literal

# Add 5 to X and Z coordinates to centre the coordinates on the block
scoreboard players add XPos 5
scoreboard players add ZPos 5

# Store the centred coordinates back into the entity, scaled back by a factor of 10
execute store result entity @s Pos[0] double 0.1 run scoreboard players get XPos temp
execute store result entity @s Pos[1] double 0.1 run scoreboard players get YPos temp
execute store result entity @s Pos[2] double 0.1 run scoreboard players get ZPos temp
