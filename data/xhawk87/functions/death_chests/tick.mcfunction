# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

# Prevent death chests from dropping as items
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"text\":\"§rDeath Chest\"}"}}}}]

# Find players who have just died
execute as @a[scores={XDCDeaths=1..},tag=!XDCIsDead] at @s run function xhawk87:death_chests/on_death

# Find players who have just respawned
execute as @a[scores={XDCDeaths=1..},tag=XDCIsDead] at @s run function xhawk87:death_chests/check_for_respawn

# Increase death chest hopper transfer rate
execute as @e[tag=XDCHopper] at @s run function xhawk87:death_chests/faster_hoppers
