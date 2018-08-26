# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

# Spawn a single death chest in place of the hopper, destroying it and spilling its contents
function xhawk87:death_chests/spawn_single_chest

# This will automatically create a new hopper and marker without the XDCAllowStack tag to prevent repeat stacking, and this marker will be automatically destroyed as its hopper no longer exists
