# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

execute store result score Health temp run data get entity @s Health 1
execute if score Health temp matches 1.. run function xhawk87:death_chests/on_respawn
