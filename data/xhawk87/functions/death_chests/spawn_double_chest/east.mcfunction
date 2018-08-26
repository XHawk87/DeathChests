# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

# Try to spawn a death chest as close to their feet as possible
setblock ~ ~ ~ minecraft:chest[facing=north,type=left]{CustomName:"{\"text\":\"§rDeath Chest\"}"} destroy 
setblock ~1 ~ ~ minecraft:chest[facing=north,type=right]{CustomName:"{\"text\":\"§rDeath Chest\"}"} destroy 

# Spawn a hopper at their head
execute positioned ~ ~1 ~ run function xhawk87:death_chests/spawn_hopper
