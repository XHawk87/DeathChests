# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

# Reset the death tracker so it doesn't repeatedly trigger
scoreboard players reset @s XDCDeaths

# Try to spawn a death chest as close to their feet as possible
setblock ~ ~ ~ minecraft:chest[type=left]{CustomName:"{\"text\":\"§rDeath Chest\"}"} destroy 
setblock ~1 ~ ~ minecraft:chest[type=right]{CustomName:"{\"text\":\"§rDeath Chest\"}"} destroy 

# Spawn a hopper at their head
setblock ~ ~1 ~ minecraft:hopper{CustomName:"{\"text\":\"§rDeath Chest\"}"} destroy 

# Make all nearby items invulnerable and still
execute as @e[type=minecraft:item,distance=0..2] run data merge entity @s {Motion:[0d,0d,0d],Invulnerable:1b}

# Place a marker on the hopper so we can increase it's transfer speed
summon armor_stand ~ ~ ~ {Tags:["XDCHopper"],NoGravity:1b,Invisible:1,Invulnerable:1,PersistenceRequired:1,Marker:1}
execute as @e[tag=XDCHopper,limit=1] run execute at @s run function xhawk87:death_chests/setup_hopper_marker
