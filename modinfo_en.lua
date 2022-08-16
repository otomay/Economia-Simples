name =
[[ Economia Simples ]]
description =
[[[h1] Alteracoes [/h1]
[list]
[*]Sem a hotkey obrigatoria de abrir a loja [strike](que atrapalhava quando tava digitando)[/strike]
[*]Corrigido bug que crashava o server quando um monstro era morto no limbo
[/list]

[h1] Referencias e creditos [/h1]
[b]Edicao em cima de:[/b] [url=https://steamcommunity.com/sharedfiles/filedetails/?id=2460675139]Simple Economy (Fork of Shaoqun Liu)[/url]
[b]Mod original:[/b] [url=https://steamcommunity.com/sharedfiles/filedetails/?id=1115709310]Simple Economy[/url]

[url=https://github.com/otomay/Economia-Simples]Projeto no github[/url]
]]
author = "Otomai"
version = "1.0.1"

forumthread = ""

api_version = 10

dst_compatible = true
dont_starve_compatible = false
reign_of_giants_compatible = false
all_clients_require_mod = true


icon_atlas = "modicon.xml"
icon = "modicon.tex"

server_filter_tags = {}

local string = "" --modified from gesture wheel

configuration_options =
{
    {
        name = "Language",
        label = "Language",
        options =   {
                        {description = "English", data = false},
                        {description = "简体中文", data = true},
                    },
        default = false,
    },
    {
        name = "KillBonus",
        label = "Reward on killing mobs",
        options =   {
                        {description = "Off", data = false},
						{description = "100% of mobs max health", data = 1.0},
						{description = "50% of mobs max health", data = 0.50},
						{description = "25% of mobs max health", data = 0.25},
                        {description = "10% of mobs max health", data = 0.1},
						{description = "8% of mobs max health", data = 0.08},
						{description = "5% of mobs max health", data = 0.05},
						{description = "2% of mobs max health", data = 0.02},
						{description = "1% of mobs max health", data = 0.01},
						{description = "0.5% of mobs max health", data = 0.005},
						{description = "0.1% of mobs max health", data = 0.001},
                    },
        default = 0.02,
    },
    {
        name = "Disintegrate",
        label = "Allow disintegration",
        options =   {
                        {description = "NO", data = false, hover = "Not allow to use Midas Wand to disintegrate items.".."\n".."点金杖仅可用来击杀低血量怪物以换取金币".."\n".."选此选项后以点金杖攻击低血量生物可100%几率击杀"},
                        {description = "YES", data = true, hover = "Allow to use Midas Wand to disintegration items.".."\n".."选此选项后以点金杖攻击低血量生物仅可25%几率击杀"},
                    },
        default = false,
    },
    {
        name = "Precious_Disintegratable",
        label = "Allow disintegrating precious items",
        options =   {
                       {description = "YES", data = true, hover = "Allow to distintegrate items in the list of precious items."},
                       {description = "NO", data = false, hover ="Not allow to distintegrate items in the list of precious items."},
                    },
        default = false,
    },
    {
        name = "CanDragMainbutton",
        label = "CanDragMainbutton",
        hover = "the Mainbutton can be dragged",
        options = {
            {description = "YES", data = true, hover = "the Mainbutton can be dragged"},
            {description = "NO", data = false, hover = "the Mainbutton can't be dragged"},
        },
        default = true,
    },
}
