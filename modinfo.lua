name =
[[ Economia Simples ]]
description =
[[[b]Baseado em:[/b] [url=https://steamcommunity.com/sharedfiles/filedetails/?id=2460675139]Simple Economy (Fork of Shaoqun Liu)[/url]
[h1] Alteracoes [/h1]
[list]
[*]Sem a hotkey obrigatoria de abrir a loja [strike](que atrapalhava quando tava digitando)[/strike]
[*]Corrigido bug que crashava o server quando um monstro era morto no limbo
[*]Parcialmente traduzido para Portugues
[/list]

[h1] MOD Original [/h1]
[url=https://steamcommunity.com/sharedfiles/filedetails/?id=1115709310]Simple Economy[/url]
[h1] Projeto [/h1]
[url=https://github.com/otomay/Economia-Simples]Github[/url]
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

local KEY_A = 65
local keyslist = {}
local string = "" --modified from gesture wheel
for i = 1, 26 do
	local ch = string.char(KEY_A + i - 1)
	keyslist[i] = {description = ch, data = ch}
end

configuration_options =
{
    {
        name = "Language",
        label = "Idioma",
        options =   {
                        {description = "Portugues (BR)", data = false},
                        {description = "简体中文", data = true},
                    },
        default = false,
    },
    {
        name = "KillBonus",
        label = "Recompensa por matar monstros",
        options =   {
                        {description = "Off", data = false},
						{description = "100% da vida maxima do monstro", data = 1.0},
						{description = "50% da vida maxima do monstro", data = 0.50},
						{description = "25% da vida maxima do monstro", data = 0.25},
                        			{description = "10% da vida maxima do monstro", data = 0.1},
						{description = "8% da vida maxima do monstro", data = 0.08},
						{description = "5% da vida maxima do monstro", data = 0.05},
						{description = "2% da vida maxima do monstro", data = 0.02},
						{description = "1% da vida maxima do monstro", data = 0.01},
						{description = "0.5% da vida maxima do monstro", data = 0.005},
						{description = "0.1% da vida maxima do monstro", data = 0.001},
                    },
        default = 0.02,
    },
    {
        name = "Disintegrate",
        label = "Permitir desintegracao",
        options =   {
                        {description = "NAO", data = false, hover = "Nao permite que a varinha de midas desintegre itens"},
                        {description = "SIM", data = true, hover = "Permite que a varinha de midas desintegre itens"},
                    },
        default = false,
    },
    {
        name = "Precious_Disintegratable",
        label = "Permitir desintegracao de itens preciosos (e nao unicos, como olho de deerclops e dente do walrus)",
        options =   {
                       {description = "SIM", data = true, hover = "Permite desintegrar itens da lista de preciosos"},
                       {description = "NAO", data = false, hover ="Não permite desintegrar itens da lista de preciosos"},
                    },
        default = false,
    },
    {
        name = "CanDragMainbutton",
        label = "Arrastar botao da loja",
        hover = "Permite os jogadores arrastarem e posicionarem o botao livremente, de acordo com suas preferencias",
        options = {
            {description = "SIM", data = true, hover = "O botao pode ser arrastado"},
            {description = "NAO", data = false, hover = "O botao nao pode ser arrastado"},
        },
        default = true,
    },
}
