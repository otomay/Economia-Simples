description =
[[新增一个交易系统。
使用专属道具来赚取金币。
打怪也可以赚钱了。
点击左上角的图标打开商品交易面板，使用金币换取需要的东西。
珍贵品每3天的早上会刷新。
不同的季节商品的价格不一样。
原作者：柴柴
]]

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
        label = "语言",
        options =   {
                        {description = "English", data = false},
                        {description = "简体中文", data = true},
                    },
        default = false,
    },
    {
        name = "KillBonus",
        label = "打怪获得金币",
        options =   {
                        {description = "关闭", data = false},
						{description = "怪物最大生命值100%", data = 1.0},
						{description = "怪物最大生命值50%", data = 0.50},
						{description = "怪物最大生命值25%", data = 0.25},
                        {description = "怪物最大生命值10%", data = 0.1},
						{description = "怪物最大生命值8%", data = 0.08},
						{description = "怪物最大生命值5%", data = 0.05},
						{description = "怪物最大生命值2%", data = 0.02},
						{description = "怪物最大生命值1%", data = 0.01},
						{description = "怪物最大生命值0.5%", data = 0.005},
						{description = "怪物最大生命值0.1%", data = 0.001},
                    },
        default = 0.02,
    },
    {
        name = "Disintegrate",
        label = "允许点金分解",
        options =   {
                        {description = "否", data = false, hover = "不允许使用点金杖分解任何掉落物".."\n".."点金杖仅可用来击杀低血量怪物以换取金币".."\n".."选此选项后以点金杖攻击低血量生物可100%几率击杀"},
                        {description = "是", data = true, hover = "允许使用点金杖分解任何掉落物".."\n".."选此选项后以点金杖攻击低血量生物仅可25%几率击杀"},
                    },
        default = true,
    },
    {
        name = "Precious_Disintegratable",
        label = "允许分解珍稀物品",
        options =   {
                        {description = "是", data = true, hover = "允许分解出售在珍稀列表里的物品"},
                        {description ="否", data = false, hover ="不允许分解珍稀物品"},
                    },
        default = true,
    },
    {
		name = "打开/关闭商店",
		label = "设置热键",
		hover = "按下热键以打开或关闭商店",
		options = keyslist,
		default = "C", --C
    },
    {
        name = "CanDragMainbutton",
        label = "拖拽商店图标",
        hover = "可以拖拽商店图标",
        options = {
            {description = "是", data = true, hover = "商店图标可以被拖拽"},
            {description = "否", data = false, hover = "商店图标不能被拖拽"},
        },
        default = true,
    },
}
}