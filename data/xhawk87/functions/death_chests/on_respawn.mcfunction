# This file is part of DeathChests
#
# Copyright 2018 by XHawk87 <hawk87@hotmail.co.uk>
#
# Licensed under GNU General Public License 3.0 or later. 
# Some rights reserved. See LICENSE.

# Reset death stats and tags to avoid repeat triggering
scoreboard players reset @s XDCDeaths
tag @s remove XDCIsDead

# Send a message to the player giving them their last death coordinates
execute if score DeathResNotice XDCSettings matches 1 run tellraw @s [{"text":"Your death chest is at ("},{"score":{"name":"@s","objective":"XDCPosX"}},{"text":", "},{"score":{"name":"@s","objective":"XDCPosY"}},{"text":", "},{"score":{"name":"@s","objective":"XDCPosZ"}},{"text":")"}]
