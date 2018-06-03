# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

# Position the marker at the top-centre of the hopper
tp @s ~ ~2 ~
function xhawk87:utilities/centre_entity

# Teleport all nearby items into the hopper
execute at @s run tp @e[type=minecraft:item,distance=0..3] @s

# Position the marker in the middle of the hopper
execute at @s run tp @s ~ ~-1 ~
