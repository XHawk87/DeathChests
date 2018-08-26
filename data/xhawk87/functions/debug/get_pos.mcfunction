# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

execute store result score XPos temp run data get entity @s Pos[0] 1
execute store result score XPos2dp temp run data get entity @s Pos[0] 100
execute store result score YPos temp run data get entity @s Pos[1] 1
execute store result score YPos2dp temp run data get entity @s Pos[1] 100
execute store result score ZPos temp run data get entity @s Pos[2] 1
execute store result score ZPos2dp temp run data get entity @s Pos[2] 100

scoreboard players set calc temp 100
scoreboard players operation calc temp *= XPos temp
scoreboard players operation XPos2dp temp -= calc temp
scoreboard players set calc temp 0
scoreboard players operation calc temp -= XPos2dp
scoreboard players operation XPos2dp temp > calc temp

scoreboard players set calc temp 100
scoreboard players operation calc temp *= YPos temp
scoreboard players operation YPos2dp temp -= calc temp
scoreboard players set calc temp 0
scoreboard players operation calc temp -= YPos2dp
scoreboard players operation YPos2dp temp > calc temp

scoreboard players set calc temp 100
scoreboard players operation calc temp *= ZPos temp
scoreboard players operation ZPos2dp temp -= calc temp
scoreboard players set calc temp 0
scoreboard players operation calc temp -= ZPos2dp
scoreboard players operation ZPos2dp temp > calc temp

scoreboard players reset calc temp
