# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

summon armor_stand ~ ~ ~ {Tags:["XDebug"],NoGravity:1b,Invisible:1,Invulnerable:1,PersistenceRequired:1,Marker:1}

execute as @e[tag=XDebug,limit=1] at @s run function xhawk87:debug/get_pos 

tellraw @a [{"text":"("},{"score":{"name":"XPos","objective":"temp"}},{"text":"."},{"score":{"name":"XPos2dp","objective":"temp"}},{"text":", "},{"score":{"name":"YPos","objective":"temp"}},{"text":"."},{"score":{"name":"YPos2dp","objective":"temp"}},{"text":", "},{"score":{"name":"ZPos","objective":"temp"}},{"text":"."},{"score":{"name":"ZPos2dp","objective":"temp"}},{"text":")"}]

kill @e[tag=XDebug]
