# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

execute unless score InCommand XDCGlobals matches 1 store result score CommandFeedback XDCGlobals run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
scoreboard players set InCommand XDCGlobals 1
