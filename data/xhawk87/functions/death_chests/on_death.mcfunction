# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

# Mark the player as currently dead to avoid repeating this trigger
tag @s add XDCIsDead

# Record last player death location for later use
execute store result score @s XDCPosX run data get entity @s Pos[0] 1
execute store result score @s XDCPosY run data get entity @s Pos[1] 1
execute store result score @s XDCPosZ run data get entity @s Pos[2] 1

# Make all nearby items invulnerable and still
execute as @e[type=minecraft:item,distance=0..2] run data merge entity @s {Motion:[0d,0d,0d],Invulnerable:1b}

# Count the number of item stacks to see how many chests we need
scoreboard players set Count temp 0

execute as @e[type=minecraft:item,distance=0..2] run scoreboard players add Count temp 1

# If there are more than 27, a double-chest is needed, otherwise a single will suffice
execute if score Count temp matches 28.. run function xhawk87:death_chests/spawn_double_chest
execute if score Count temp matches ..27 run function xhawk87:death_chests/spawn_single_chest

# Reset variables to avoid scoreboard clutter
scoreboard players reset Count temp
