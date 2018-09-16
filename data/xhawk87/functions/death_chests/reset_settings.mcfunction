# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

# FirstRun - Used for determining if this is the first run of the data pack, perform any one-time actions as appropriate
# 0 - This data pack has not been run yet, or has been reset
# 1 - This data pack has been run before
scoreboard players set FirstRun XDCSettings 1

# DeathResNotice - Used for determining if death chest location should be displayed to players after they respawn
# 0 - Do NOT display death chest location on respawn
# 1 - Display death chest location on respawn
scoreboard players set DeathResNotice XDCSettings 1
