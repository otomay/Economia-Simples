name =
[[ Economia Simples ]]
description =
[[
Implementa um sistema de economia no jogo atraves da disponibilizacao de uma loja (interface no jogo) e a possibilidade do ganho de moedas de varias maneiras, incluindo combate.
]]
author = "Otomai"
version = "1.1"

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
		label = "Idioma",
		options = {
			{description = "Portugues (BR)", data = 1},
			{description = "English", data = 2},
			{description = "简体中文", data = 3},
		},
		default = 1,
	},
	{
		name = "KillBonus",
		label = "Monstros dão moedas",
		hover = "Matar monstros concede moedas",
		options = {
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
		hover = "A varinha de Midas troca itens por moedas, equivalente a uma venda",
		options = {
			{description = "NAO", data = false, hover = "Nao permite que a varinha de midas desintegre itens por moedas"},
			{description = "SIM", data = true, hover = "Permite que a varinha de midas desintegre itens por moedas"},
		},
		default = false,
	},
	{
		name = "Precious_Disintegratable",
		label = "Desintegrar preciosos",
		hover = "Permitir desintegracao de itens preciosos (e nao unicos, como olho de deerclops e dente do walrus)",
		options = {
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