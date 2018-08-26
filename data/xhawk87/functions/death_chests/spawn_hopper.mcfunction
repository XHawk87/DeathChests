# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

# Spawn a hopper at their head
setblock ~ ~ ~ minecraft:hopper{CustomName:"{\"text\":\"§rDeath Chest\"}"} destroy 

# Place a marker on the hopper so we can increase it's transfer speed
execute align xyz positioned ~0.5 ~0.1 ~0.5 run summon armor_stand ~ ~ ~ {Tags:["XDCHopper"],NoGravity:1b,Invisible:1,Invulnerable:1,PersistenceRequired:1,Marker:1}

# Teleport all nearby items into the hopper
execute as @e[tag=XDCHopper,limit=1] at @s run tp @e[type=minecraft:item,distance=0..2] ~ ~1 ~
