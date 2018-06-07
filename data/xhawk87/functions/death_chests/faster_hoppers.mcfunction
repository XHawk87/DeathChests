# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

# Reset transfer cooldown to speed up the hopper
execute if block ~ ~ ~ minecraft:hopper run data merge block ~ ~ ~ {TransferCooldown:1b}

# Make sure all items stay in the hopper
tp @e[type=minecraft:item,distance=0..2] ~ ~1 ~

# If hopper is done transferring, destroy it
execute if block ~ ~ ~ minecraft:hopper{Items:[]} run execute unless entity @e[type=minecraft:item,distance=0..2,limit=1] run setblock ~ ~ ~ minecraft:air replace

# If the hopper was destroyed, remove the marker
execute if block ~ ~ ~ minecraft:air run kill @s
