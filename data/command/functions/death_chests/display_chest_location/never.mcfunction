# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

function xhawk87:death_chests/do_command

scoreboard players set DeathResNotice XDCSettings 0

tellraw @s "[XHawk87's Death Chests] Players will not receive any notifications regarding death chests on respawning"
