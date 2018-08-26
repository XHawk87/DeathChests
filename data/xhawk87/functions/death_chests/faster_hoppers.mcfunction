# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

# Make sure all items stay in the hopper
tp @e[type=minecraft:item,distance=0..2] ~ ~1 ~

# If hopper is done transferring, destroy it
execute if block ~ ~ ~ minecraft:hopper{Items:[]} unless entity @e[type=minecraft:item,distance=0..2,limit=1] run setblock ~ ~ ~ minecraft:air replace

# Check if chest is full and can be stacked
execute if entity @s[tag=XDCAllowStack] if block ~ ~ ~ minecraft:hopper{TransferCooldown:0} unless block ~ ~ ~ minecraft:hopper{Items:[]} run function xhawk87:death_chests/stack_chests

# Reset transfer cooldown to speed up the hopper
execute if block ~ ~ ~ minecraft:hopper run data merge block ~ ~ ~ {TransferCooldown:1b}

# If the hopper was destroyed, remove the marker
execute unless block ~ ~ ~ minecraft:hopper run kill @s
