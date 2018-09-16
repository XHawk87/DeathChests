# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

execute if score CommandFeedback XDCGlobals matches 1 run gamerule sendCommandFeedback true
scoreboard players set InCommand XDCGlobals 0
