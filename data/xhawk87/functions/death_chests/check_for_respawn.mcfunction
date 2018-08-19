# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

scoreboard players set 1 temp 1

execute store result score Health temp run data get entity @s Health 1
execute if score Health temp >= 1 temp run function xhawk87:death_chests/on_respawn

scoreboard players reset 1
