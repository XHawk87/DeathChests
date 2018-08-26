# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

# Spawn a single chest as normal
function xhawk87:death_chests/spawn_single_chest

# Allow the hopper to stack up if it gets full
tag @e[tag=XDCHopper,limit=1] add XDCAllowStack
