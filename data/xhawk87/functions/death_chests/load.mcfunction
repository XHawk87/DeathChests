# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

### Player properties ###

# Track player last death location
scoreboard objectives add XDCPosX dummy
scoreboard objectives add XDCPosY dummy
scoreboard objectives add XDCPosZ dummy

# Track player deaths
scoreboard objectives add XDCDeaths deathCount

# tag XDCIsDead marks a player as currently dead and not yet respawned

### Armour Stand properties ###

# tag XDCHopper identifies an armour stand as a marker for the location of a death chest hopper

# tag XDCAllowStack allows a hopper to stack chests upwards if it runs out of space in the first

### Misc ###

# Set up temporary variables
scoreboard objectives add temp dummy

# Set up admin settings
scoreboard objectives add XDCSettings dummy

# Set up global variables
scoreboard objectives add XDCGlobals dummy

### Installation ###

execute if score FirstRun XDCSettings matches 0 run function xhawk87:death_chests/install
