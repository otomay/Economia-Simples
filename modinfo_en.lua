name =
[[ Economia Simples ]]
description =
[[
It implements an in-game economy system through the provision of a store (in-game interface) and the possibility of earning coins in various ways, including combat.

- On endless servers it is recommended to use a setting of at most 2% of the monsters' maximum health
- Allowing precious items to disintegrate does not affect unique and mandatory items for the game progress, such as moon altars
]]
author = "Otomai"
version = "1.2.3"

forumthread = ""
api_version = 10

dst_compatible = true
dont_starve_compatible = false
reign_of_giants_compatible = false
all_clients_require_mod = true

icon_atlas = "modicon.xml"
icon = "modicon.tex"
server_filter_tags = {}

configuration_options =
{
	{
		name = "Language",
		label = "Language",
		options = {
			{description = "Português (BR)", data = 1},
			{description = "English", data = 2},
			{description = "简体中文", data = 3},
		},
		default = 1,
	},
	{
		name = "KillBonus",
		label = "Monsters give coins",
		hover = "Killing monsters grants coins",
		options = {
			{description = "Off", data = false},
			{description = "100% monster's maximum health", data = 1.0},
			{description = "50% monster's maximum health", data = 0.50},
			{description = "25% monster's maximum health", data = 0.25},
			{description = "10% monster's maximum health", data = 0.1},
			{description = "8% monster's maximum health", data = 0.08},
			{description = "5% monster's maximum health", data = 0.05},
			{description = "2% monster's maximum health", data = 0.02},
			{description = "1% monster's maximum health", data = 0.01},
			{description = "0.5% monster's maximum health", data = 0.005},
			{description = "0.1% monster's maximum health", data = 0.001},
		},
		default = 0.02,
	},
	{
		name = "Disintegrate",
		label = "Allow disintegration",
		hover = "Midas' wand exchanges items for coins. Equivalent to a sale",
		options = {
			{description = "NO", data = false, hover = "Midas' wand won't do any good"},
			{description = "YES", data = true, hover = "Midas' wand will be able to disintegrate weak items and monsters for coins"},
		},
		default = false,
	},
	{
		name = "Precious_Disintegratable",
		label = "Disintegrate precious",
		hover = "Precious items such as eye of deerclops, walrus tooth and other boss items",
		options = {
			{description = "YES", data = true, hover = "Allows you to disintegrate items from the precious list"},
			{description = "NO", data = false, hover ="Does not allow to disintegrate items from the precious list"},
		},
		default = false,
	},
	{
		name = "CanDragMainbutton",
		label = "Drag shop button",
		hover = "Allows players to freely drag and place the button according to their preferences",
		options = {
			{description = "YES", data = true, hover = "The button can be dragged"},
			{description = "NO", data = false, hover = "Button cannot be dragged"},
		},
		default = true,
	},
}
