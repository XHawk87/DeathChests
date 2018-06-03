# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

# Track player deaths
scoreboard objectives add XDCDeaths deathCount

# Set up temporary variables
scoreboard objectives add temp dummy

# Store literal numbers for arithmetic operations
scoreboard objectives add Literal dummy
scoreboard players set 10 Literal 10
