name =
[[ Economia Simples ]]
description =
[[
Implementa um sistema de economia no jogo atraves da disponibilizacao de uma loja (interface no jogo) e a possibilidade do ganho de moedas de varias maneiras, incluindo combate.

- Em servidores endless recomenda-se utilizar a configuracao de, no máximo, 2% da vida maxima dos monstros
- Permitir desintegracao de itens preciosos nao afeta itens unicos e obrigatorios para o andamento do jogo, como os altares da lua
]]
author = "Otomai"
version = "1.2.1"

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
			{description = "Português (BR)", data = 1},
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
			{description = "100% da vida máxima do monstro", data = 1.0},
			{description = "50% da vida máxima do monstro", data = 0.50},
			{description = "25% da vida máxima do monstro", data = 0.25},
			{description = "10% da vida máxima do monstro", data = 0.1},
			{description = "8% da vida máxima do monstro", data = 0.08},
			{description = "5% da vida máxima do monstro", data = 0.05},
			{description = "2% da vida máxima do monstro", data = 0.02},
			{description = "1% da vida máxima do monstro", data = 0.01},
			{description = "0.5% da vida máxima do monstro", data = 0.005},
			{description = "0.1% da vida máxima do monstro", data = 0.001},
		},
		default = 0.02,
	},
	{
		name = "Disintegrate",
		label = "Permitir desintegração",
		hover = "A varinha de Midas troca itens por moedas. Equivalente a uma venda",
		options = {
			{description = "NÃO", data = false, hover = "A varinha de Midas não servirá de nada"},
			{description = "SIM", data = true, hover = "A varinha de Midas poderá desintegrar itens e monstros fracos por moedas"},
		},
		default = false,
	},
	{
		name = "Precious_Disintegratable",
		label = "Desintegrar preciosos",
		hover = "Itens preciosos, como olho de deerclops, dente do walrus e outros itens de boss",
		options = {
			{description = "SIM", data = true, hover = "Permite desintegrar itens da lista de preciosos"},
			{description = "NÃO", data = false, hover ="Não permite desintegrar itens da lista de preciosos"},
		},
		default = false,
	},
	{
		name = "CanDragMainbutton",
		label = "Arrastar botão da loja",
		hover = "Permite os jogadores arrastarem e posicionarem o botão livremente, de acordo com suas preferências",
		options = {
			{description = "SIM", data = true, hover = "O botão pode ser arrastado"},
			{description = "NÃO", data = false, hover = "O botão não pode ser arrastado"},
		},
		default = true,
	},
}
