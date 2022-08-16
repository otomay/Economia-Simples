local _G = GLOBAL
local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local Recipe = GLOBAL.Recipe
local Ingredient = GLOBAL.Ingredient
local RECIPETABS = GLOBAL.RECIPETABS
local TECH = GLOBAL.TECH

require 'SEscripts/strings_en'
TUNING.SElan = "en"

if GetModConfigData('Disintegrate') then
    TUNING.allowgoldstaff = true
else
    TUNING.allowgoldstaff = false
end

if GetModConfigData('Precious_Disintegratable') then
    TUNING.Precious_Disintegratable = true
else
    TUNING.Precious_Disintegratable = false
end

if GetModConfigData('CanDragMainbutton') then
    TUNING.CanDragMainbutton = true
else
    TUNING.CanDragMainbutton = false
end


TUNING.Refresh_Price = 233 --刷新商店的花费

PrefabFiles = {
    "secoin",
    "stealer",
    "goldstaff",
    "vipcard",
    "luckamulet",
    "coin_bundle",
}

Assets = {
    Asset("ATLAS", "images/inventoryimages/secoin.xml"),
    Asset("IMAGE", "images/inventoryimages/secoin.tex"),

    Asset("ATLAS", "images/sehud/mainbutton.xml"),
    Asset("IMAGE", "images/sehud/mainbutton.tex"),

    Asset("ATLAS", "images/sehud/bg.xml"),
    Asset("IMAGE", "images/sehud/bg.tex"),

    Asset("ATLAS", "images/sehud/bg_2.xml"),
    Asset("IMAGE", "images/sehud/bg_2.tex"),

    Asset("ATLAS", "images/sehud/exp_act.xml"),
    Asset("IMAGE", "images/sehud/exp_act.tex"),

    Asset("ATLAS", "images/sehud/exp_dact.xml"),
    Asset("IMAGE", "images/sehud/exp_dact.tex"),

    Asset("ATLAS", "images/sehud/expmask.xml"),
    Asset("IMAGE", "images/sehud/expmask.tex"),

    Asset("ATLAS", "images/sehud/level_act.xml"),
    Asset("IMAGE", "images/sehud/level_act.tex"),

    Asset("ATLAS", "images/sehud/level_dact.xml"),
    Asset("IMAGE", "images/sehud/level_dact.tex"),

    Asset("ATLAS", "images/sehud/status_"..TUNING.SElan..".xml"),
    Asset("IMAGE", "images/sehud/status_"..TUNING.SElan..".tex"),

    Asset("ATLAS", "images/sehud/hudcoin.xml"),
    Asset("IMAGE", "images/sehud/hudcoin.tex"),

    Asset("ATLAS", "images/sehud/title_food.xml"),
    Asset("IMAGE", "images/sehud/title_food.tex"),
    Asset("ATLAS", "images/sehud/title_cloth.xml"),
    Asset("IMAGE", "images/sehud/title_cloth.tex"),
    Asset("ATLAS", "images/sehud/title_smithing.xml"),
    Asset("IMAGE", "images/sehud/title_smithing.tex"),
    Asset("ATLAS", "images/sehud/title_resource.xml"),
    Asset("IMAGE", "images/sehud/title_resource.tex"),
    Asset("ATLAS", "images/sehud/title_sail.xml"),
    Asset("IMAGE", "images/sehud/title_sail.tex"),
    Asset("ATLAS", "images/sehud/title_precious.xml"),
    Asset("IMAGE", "images/sehud/title_precious.tex"),

    Asset("ATLAS", "images/sehud/slotbg_normal.xml"),
    Asset("IMAGE", "images/sehud/slotbg_normal.tex"),

    Asset("ATLAS", "images/sehud/slotbg_special.xml"),
    Asset("IMAGE", "images/sehud/slotbg_special.tex"),

    Asset("ATLAS", "images/sehud/slotbg_fresh.xml"),
    Asset("IMAGE", "images/sehud/slotbg_fresh.tex"),

    Asset("ATLAS", "images/sehud/back.xml"),
    Asset("IMAGE", "images/sehud/back.tex"),

    Asset("ATLAS", "images/sehud/next.xml"),
    Asset("IMAGE", "images/sehud/next.tex"),

    Asset("ATLAS", "images/sehud/close.xml"),
    Asset("IMAGE", "images/sehud/close.tex"),

    Asset("ATLAS", "images/sehud/refresh.xml"),
    Asset("IMAGE", "images/sehud/refresh.tex"),

    Asset("ATLAS", "images/sehud/infobutton.xml"),
    Asset("IMAGE", "images/sehud/infobutton.tex"),

    Asset("ATLAS", "images/sehud/infoback.xml"),
    Asset("IMAGE", "images/sehud/infoback.tex"),

    Asset("ATLAS", "images/sehud/infopage_"..TUNING.SElan..".xml"),
    Asset("IMAGE", "images/sehud/infopage_"..TUNING.SElan..".tex"),

    Asset("ATLAS", "images/sehud/new.xml"),
    Asset("IMAGE", "images/sehud/new.tex"),

    Asset("ATLAS", "images/sehud/up.xml"),
    Asset("IMAGE", "images/sehud/up.tex"),

    Asset("ATLAS", "images/sehud/low.xml"),
    Asset("IMAGE", "images/sehud/low.tex"),

    Asset("ATLAS", "images/sehud/food_act_"..TUNING.SElan..".xml"),
    Asset("IMAGE", "images/sehud/food_act_"..TUNING.SElan..".tex"),
    Asset("ATLAS", "images/sehud/food_dact_"..TUNING.SElan..".xml"),
    Asset("IMAGE", "images/sehud/food_dact_"..TUNING.SElan..".tex"),

    Asset("ATLAS", "images/sehud/cloth_act_"..TUNING.SElan..".xml"),
    Asset("IMAGE", "images/sehud/cloth_act_"..TUNING.SElan..".tex"),
    Asset("ATLAS", "images/sehud/cloth_dact_"..TUNING.SElan..".xml"),
    Asset("IMAGE", "images/sehud/cloth_dact_"..TUNING.SElan..".tex"),

    Asset("ATLAS", "images/sehud/smithing_act_"..TUNING.SElan..".xml"),
    Asset("IMAGE", "images/sehud/smithing_act_"..TUNING.SElan..".tex"),
    Asset("ATLAS", "images/sehud/smithing_dact_"..TUNING.SElan..".xml"),
    Asset("IMAGE", "images/sehud/smithing_dact_"..TUNING.SElan..".tex"),

    Asset("ATLAS", "images/sehud/resource_act_"..TUNING.SElan..".xml"),
    Asset("IMAGE", "images/sehud/resource_act_"..TUNING.SElan..".tex"),
    Asset("ATLAS", "images/sehud/resource_dact_"..TUNING.SElan..".xml"),
    Asset("IMAGE", "images/sehud/resource_dact_"..TUNING.SElan..".tex"),

    Asset("ATLAS", "images/sehud/sail_act_"..TUNING.SElan..".xml"),
    Asset("IMAGE", "images/sehud/sail_act_"..TUNING.SElan..".tex"),
    Asset("ATLAS", "images/sehud/sail_dact_"..TUNING.SElan..".xml"),
    Asset("IMAGE", "images/sehud/sail_dact_"..TUNING.SElan..".tex"),

    Asset("ATLAS", "images/sehud/precious_act_"..TUNING.SElan..".xml"),
    Asset("IMAGE", "images/sehud/precious_act_"..TUNING.SElan..".tex"),
    Asset("ATLAS", "images/sehud/precious_dact_"..TUNING.SElan..".xml"),
    Asset("IMAGE", "images/sehud/precious_dact_"..TUNING.SElan..".tex"),

    Asset("ATLAS", "images/sehud/swdj_"..TUNING.SElan.."1.xml"),
    Asset("IMAGE", "images/sehud/swdj_"..TUNING.SElan.."1.tex"),
    Asset("ATLAS", "images/sehud/swdj_"..TUNING.SElan.."2.xml"),
    Asset("IMAGE", "images/sehud/swdj_"..TUNING.SElan.."2.tex"),
    Asset("ATLAS", "images/sehud/swdj_"..TUNING.SElan.."3.xml"),
    Asset("IMAGE", "images/sehud/swdj_"..TUNING.SElan.."3.tex"),
    Asset("ATLAS", "images/sehud/swdj_"..TUNING.SElan.."4.xml"),
    Asset("IMAGE", "images/sehud/swdj_"..TUNING.SElan.."4.tex"),
    Asset("ATLAS", "images/sehud/swdj_"..TUNING.SElan.."5.xml"),
    Asset("IMAGE", "images/sehud/swdj_"..TUNING.SElan.."5.tex"),

    Asset("ATLAS", "images/sehud/vip0.xml"),
    Asset("IMAGE", "images/sehud/vip0.tex"),
    Asset("ATLAS", "images/sehud/vip1.xml"),
    Asset("IMAGE", "images/sehud/vip1.tex"),
    Asset("ATLAS", "images/sehud/vip2.xml"),
    Asset("IMAGE", "images/sehud/vip2.tex"),
    Asset("ATLAS", "images/sehud/vip3.xml"),
    Asset("IMAGE", "images/sehud/vip3.tex"),
    Asset("ATLAS", "images/sehud/vip4.xml"),
    Asset("IMAGE", "images/sehud/vip4.tex"),
    Asset("ATLAS", "images/sehud/vip5.xml"),
    Asset("IMAGE", "images/sehud/vip5.tex"),

    Asset("ATLAS", "images/sehud/numbers/0.xml"),
    Asset("IMAGE", "images/sehud/numbers/0.tex"),
    Asset("ATLAS", "images/sehud/numbers/1.xml"),
    Asset("IMAGE", "images/sehud/numbers/1.tex"),
    Asset("ATLAS", "images/sehud/numbers/2.xml"),
    Asset("IMAGE", "images/sehud/numbers/2.tex"),
    Asset("ATLAS", "images/sehud/numbers/3.xml"),
    Asset("IMAGE", "images/sehud/numbers/3.tex"),
    Asset("ATLAS", "images/sehud/numbers/4.xml"),
    Asset("IMAGE", "images/sehud/numbers/4.tex"),
    Asset("ATLAS", "images/sehud/numbers/5.xml"),
    Asset("IMAGE", "images/sehud/numbers/5.tex"),
    Asset("ATLAS", "images/sehud/numbers/6.xml"),
    Asset("IMAGE", "images/sehud/numbers/6.tex"),
    Asset("ATLAS", "images/sehud/numbers/7.xml"),
    Asset("IMAGE", "images/sehud/numbers/7.tex"),
    Asset("ATLAS", "images/sehud/numbers/8.xml"),
    Asset("IMAGE", "images/sehud/numbers/8.tex"),
    Asset("ATLAS", "images/sehud/numbers/9.xml"),
    Asset("IMAGE", "images/sehud/numbers/9.tex"),

    Asset("ATLAS", "images/sehud/bignums/0.xml"),
    Asset("IMAGE", "images/sehud/bignums/0.tex"),
    Asset("ATLAS", "images/sehud/bignums/1.xml"),
    Asset("IMAGE", "images/sehud/bignums/1.tex"),
    Asset("ATLAS", "images/sehud/bignums/2.xml"),
    Asset("IMAGE", "images/sehud/bignums/2.tex"),
    Asset("ATLAS", "images/sehud/bignums/3.xml"),
    Asset("IMAGE", "images/sehud/bignums/3.tex"),
    Asset("ATLAS", "images/sehud/bignums/4.xml"),
    Asset("IMAGE", "images/sehud/bignums/4.tex"),
    Asset("ATLAS", "images/sehud/bignums/5.xml"),
    Asset("IMAGE", "images/sehud/bignums/5.tex"),
    Asset("ATLAS", "images/sehud/bignums/6.xml"),
    Asset("IMAGE", "images/sehud/bignums/6.tex"),
    Asset("ATLAS", "images/sehud/bignums/7.xml"),
    Asset("IMAGE", "images/sehud/bignums/7.tex"),
    Asset("ATLAS", "images/sehud/bignums/8.xml"),
    Asset("IMAGE", "images/sehud/bignums/8.tex"),
    Asset("ATLAS", "images/sehud/bignums/9.xml"),
    Asset("IMAGE", "images/sehud/bignums/9.tex"),
    Asset("ATLAS", "images/sehud/wrap_title.xml"),
    Asset("IMAGE", "images/sehud/wrap_title.tex"),
    Asset("ATLAS", "images/sehud/wrap_description_en.xml"),
    Asset("IMAGE", "images/sehud/wrap_description_en.tex"),
}

--载入清单
modimport("scripts/SEscripts/itemlist.lua")

--角色交易属性
AddPlayerPostInit(function(inst)
    inst.seccoin = GLOBAL.net_int(inst.GUID,"seccoin")
    inst.secexp = GLOBAL.net_int(inst.GUID,"secexp")
    inst.seclevel = GLOBAL.net_shortint(inst.GUID,"seclevel")
    inst.secvip = GLOBAL.net_shortint(inst.GUID,"secvip")
    inst.secprecious = GLOBAL.net_bytearray(inst.GUID,"secprecious")
    inst.secpreciouschange = GLOBAL.net_bool(inst.GUID, "secpreciouschange")
    inst.secsoundm = GLOBAL.net_bool(inst.GUID, "secsoundm", "secsoundm")
    inst:AddComponent("seplayerstatus")
    if not GLOBAL.TheNet:GetIsClient() then
        inst.components.seplayerstatus:Init(inst)
    end
end)

--全局经济数据
AddPrefabPostInit("forest", function() GLOBAL.TheWorld:AddComponent("seworldstatus") end)
AddPrefabPostInit("cave", function() GLOBAL.TheWorld:AddComponent("seworldstatus") end)

local function check(player)
    local checklist = {}
    local code = 0
    for k,v in pairs(player.components.seplayerstatus.precious) do
        table.insert(checklist,TUNING.selist_precious[v])
    end
    for k,v in pairs(checklist) do
        code = code + v.price
    end
    return code
end

--设置modrpc
AddModRPCHandler("SimpleEconomy", "buy", function(player, iname, iprice, more, lock)  --商店功能，与服务器通信
    local iiname = iname
    local amount = 1  --购买数量
    if more then amount = 10 end  --如果右键则购买10个
    if(lock == check(player)) then
        if iname == "blueprint" and math.random(0, 40) <= 1 then  --1/40概率买到稀有蓝图
            iiname = selist_blueprint[math.random(#selist_blueprint)].name
        end
        
        if player.components.health.currenthealth > 0 and not player:HasTag("playerghost") then  --如果人物不是死亡状态
            local discount = player.components.seplayerstatus.discount
            if player.components.seplayerstatus.coin >= math.ceil(iprice*discount*amount) then  --如果金币足够
                for i=1, amount do
                    local item = GLOBAL.SpawnPrefab(iiname)  --生成商品
                    player.components.inventory:GiveItem(item, nil, player:GetPosition())
                end
                player.components.seplayerstatus:DoDeltaCoin(-iprice*amount)  --减少金币
            end
        else                                                                                      --如果人物是死亡状态
            local discount = player.components.seplayerstatus.discount
            if player.components.seplayerstatus.coin >= math.ceil(iprice*discount) then  --如果金币够
                local pt = Point(player.Transform:GetWorldPosition())  --获得人物在世界的位置
                for i=1, amount do
                    local angle = math.random()*2*GLOBAL.PI  --随机角度
                    local loots = GLOBAL.SpawnPrefab(iiname)  --生成物品
                    loots.Transform:SetPosition(pt.x,pt.y,pt.z)  --物品放在人物脚下
                    loots.Physics:SetVel(2*math.cos(angle), 10, 2*math.sin(angle))
                end
                player.components.seplayerstatus:DoDeltaCoin(-iprice*amount)  --减少金币
            end
        end
    end
end)

AddModRPCHandler("SimpleEconomy", "refresh", function(player)  --刷新功能，与服务器通信
    if player.components.seplayerstatus.coin >= TUNING.Refresh_Price then
        player.components.seplayerstatus:preciousbuild()
        if player.components.seplayerstatus.preciouschange == true then
            player.components.seplayerstatus.preciouschange = false
        else
            player.components.seplayerstatus.preciouschange = true
        end
        player.components.seplayerstatus:DoDeltaCoin(-TUNING.Refresh_Price)
    end
end)

AddModRPCHandler("SimpleEconomy", "wrapcoin", function(player,iamount,iprice,more)  --打包金币功能
    local wrap_amount = 1
    if more then wrap_amount = 5 end
    if player.components.seplayerstatus.coin >= math.ceil(iprice*wrap_amount) then
        for i=1,wrap_amount do
            local item = _G.SpawnPrefab("coin_bundle")
            item.components.coin_container.amount = iamount
            item.components.inspectable:SetDescription(STRINGS.CHARACTERS.GENERIC.DESCRIBE.COIN_BUNDLE..item.components.coin_container.amount)
            player.components.inventory:GiveItem(item, nil, player:GetPosition())
        end
        player.components.seplayerstatus:DoDeltaCoin(-iprice*wrap_amount, true,true)
    end
end)

--换人不掉钱

local restartlist={}  --换人物时，当前经济学数据存放在此

local function ListInsert(player)  --存放数据
    if player.userid and player.components then
        restartlist[player.userid] = {
            coin = 200,
            exp = 0,
            level =1,
            vip = 0,
            discount = 0,
            slist = {},
            precious = {},

            yes = false,
            preciouschange = false,
            soundm = false,
            day = 0,
            used = true,
        }
    end

    restartlist[player.userid].coin=player.components.seplayerstatus.coin
    restartlist[player.userid].exp=player.components.seplayerstatus.exp
    restartlist[player.userid].level=player.components.seplayerstatus.level
    restartlist[player.userid].vip=player.components.seplayerstatus.vip
    restartlist[player.userid].discount=player.components.seplayerstatus.discount
    restartlist[player.userid].slist=player.components.seplayerstatus.slist
    restartlist[player.userid].precious=player.components.seplayerstatus.precious

    restartlist[player.userid].yes=true
    restartlist[player.userid].preciouschange=player.components.seplayerstatus.presciouschange
    restartlist[player.userid].soundm=player.components.seplayerstatus.soundm
    restartlist[player.userid].day=player.components.seplayerstatus.day
    restartlist[player.userid].used=false

end

AddComponentPostInit("playerspawner",function(OnPlayerSpawn, inst)  --为组件添加方法
    inst:ListenForEvent("ms_playerjoined",function(self,player)  --当有玩家加入时，检查是否是更换人物，如果是，检查是否有经济学数据备份，如果有则继承

        if restartlist[player.userid] and (not restartlist[player.userid].used) then
            player.components.seplayerstatus.coin=restartlist[player.userid].coin
            player.components.seplayerstatus.exp=restartlist[player.userid].exp
            player.components.seplayerstatus.level=restartlist[player.userid].level
            player.components.seplayerstatus.vip=restartlist[player.userid].vip
            player.components.seplayerstatus.discount=restartlist[player.userid].discount
            player.components.seplayerstatus.slist=restartlist[player.userid].slist
            player.components.seplayerstatus.precious=restartlist[player.userid].precious

            player.components.seplayerstatus.yes=true
            player.components.seplayerstatus.presciouschange=restartlist[player.userid].preciouschange
            player.components.seplayerstatus.soundm=restartlist[player.userid].soundm
            player.components.seplayerstatus.day=restartlist[player.userid].day
            restartlist[player.userid].used=true
        end
    end)

    inst:ListenForEvent("ms_playerdespawnanddelete",function(self,player)  --当有玩家被删除时，保留备份经济学的数据
        ListInsert(player)
    end)

end)

local function mydoweight(inst, target)
    local price = 0
    if target ~= nil then
        local weight = target.components.weighable:GetWeight()
        local weightpercent = target.components.weighable:GetWeightPercent()
        if weight and weightpercent then
            price = weight*(1+weightpercent)/2
        end
        --季节鱼价格为2倍
        if target.prefab == "oceanfish_small_7_inv" or target.prefab =="oceanfish_small_8_inv" or target.prefab =="oceanfish_small_6_inv" or target.prefab =="oceanfish_medium_8_inv" then
            price = price*2
            --TheNet:Announce("是季节鱼")
        end

        price = math.ceil(price)
    end
    return price
end

--AddPrefabPostInit("pocket_scale",function(inst)
--    inst:AddComponent("itemweigher")
--    inst.components.itemweigher.type = _G.TROPHYSCALE_TYPES.FISH
--    inst.components.itemweigher:SetOnDoWeighInFn(mydoweight)
--end)

local TimeEvent = _G.TimeEvent

local mytimeline = {}

mytimeline = {
    TimeEvent(30 * _G.FRAMES, function(inst)
        local weight = inst.sg.statemem.target ~= nil and inst.sg.statemem.target.components.weighable:GetWeight() or nil
        if weight ~= nil and inst:PerformBufferedAction() then
            local announce_str = inst.sg.statemem.target.components.weighable:GetWeightPercent() >= TUNING.WEIGHABLE_HEAVY_WEIGHT_PERCENT and "ANNOUNCE_WEIGHT_HEAVY" or "ANNOUNCE_WEIGHT"

            local price = 0
            price = mydoweight(inst, inst.sg.statemem.target)

            local str = _G.subfmt(_G.GetString(inst, announce_str), {weight = string.format("%0.2f", weight)})
            str = str.."\ncoins: "..price

            inst.components.talker:Say(str)
        else
            inst.AnimState:ClearOverrideBuild(inst.sg.statemem.target_build)
            inst:ClearBufferedAction()
            inst.AnimState:SetTime(51 * FRAMES)
        end
    end),
}

local function SGWilsonPostInit(sg)
    -- note! This overwrites the old timeout behavior! If possible you should
    -- always try appending your behaviour instead.
    sg.states["use_pocket_scale"].timeline = mytimeline
end

AddStategraphPostInit("wilson", SGWilsonPostInit)

local COIN_BUNDLE_UNWRAP = _G.Action({ rmb=true, priority=2 })  --打开钱袋动作,该参数使动作可以在scene中右键触发
COIN_BUNDLE_UNWRAP.id = "COIN_BUNDLE_UNWRAP"  --id
COIN_BUNDLE_UNWRAP.str = "Desembrulhar"
end
COIN_BUNDLE_UNWRAP.fn = function(act)  --动作触发时执行的函数
    local target = act.target or act.invobject
    target.components.coin_container:Unwrap(act.doer,target)  --调用函数
    return true  --必须要有，否则状态结束时人物会说我做不到
end

AddAction(COIN_BUNDLE_UNWRAP)  --将动作加入action

AddStategraphActionHandler("wilson", _G.ActionHandler(COIN_BUNDLE_UNWRAP, "dolongaction"))  --设置状态图，联机有两个
AddStategraphActionHandler("wilson_client", _G.ActionHandler(COIN_BUNDLE_UNWRAP, "dolongaction"))

AddComponentAction("INVENTORY", "coin_container", function(inst, doer, actions, right)  --设置什么时候触发动作，inventory代表在在物品栏或者物品指在人物身上
    if doer.replica.inventory:GetActiveItem() ~= inst and inst:HasTag("coin_container") then
        table.insert(actions, _G.ACTIONS.COIN_BUNDLE_UNWRAP)
    end
end)
AddComponentAction("SCENE", "coin_container", function(inst, doer, actions, right)  --物品在地上
    --print(right)
    --print("2")
    --print(inst:HasTag("coin_container"))
    if right and inst:HasTag("coin_container") then
        table.insert(actions, _G.ACTIONS.COIN_BUNDLE_UNWRAP)
    end
end)

local COIN_BUNDLE_ADD = _G.Action()  --合并钱袋
COIN_BUNDLE_ADD.id = "COIN_BUNDLE_ADD"
COIN_BUNDLE_ADD.str = "Abastecer"
end
COIN_BUNDLE_ADD.fn = function(act)
    act.target.components.coin_container.amount = act.target.components.coin_container.amount + act.invobject.components.coin_container.amount
    act.target.components.inspectable:SetDescription(STRINGS.CHARACTERS.GENERIC.DESCRIBE.COIN_BUNDLE..act.target.components.coin_container.amount)
    act.doer.components.inventory:RemoveItem(act.invobject)
    act.invobject:Remove()
    return true
end

AddAction(COIN_BUNDLE_ADD)

AddStategraphActionHandler("wilson", _G.ActionHandler(COIN_BUNDLE_ADD, "doshortaction"))
AddStategraphActionHandler("wilson_client", _G.ActionHandler(COIN_BUNDLE_ADD, "doshortaction"))


AddComponentAction("USEITEM", "coin_container", function(inst, doer, target, actions)
    if target:HasTag("coin_container") then
        table.insert(actions, _G.ACTIONS.COIN_BUNDLE_ADD)
    end
end)

--UI尺寸
local function ScaleUI(self, screensize)
    local hudscale = self.top_root:GetScale()
    self.uiseconomy:SetScale(.75*hudscale.x,.75*hudscale.y,1)
end

--UI
local uiseconomy = require("widgets/uiseconomy")
local function Adduiseconomy(self)
    self.uiseconomy = self.top_root:AddChild(uiseconomy(self.owner))
    local screensize = {GLOBAL.TheSim:GetScreenSize()}
    ScaleUI(self, screensize)
    self.uiseconomy:SetHAnchor(0)
    self.uiseconomy:SetVAnchor(0)
    --H: 0=中间 1=左端 2=右端
    --V: 0=中间 1=顶端 2=底端
    self.uiseconomy:MoveToFront()
    local OnUpdate_base = self.OnUpdate
    self.OnUpdate = function(self, dt)
        OnUpdate_base(self, dt)
        local curscreensize = {GLOBAL.TheSim:GetScreenSize()}
        if curscreensize[1] ~= screensize[1] or curscreensize[2] ~= screensize[2] then
            ScaleUI(self)
            screensize = curscreensize
        end
    end
end

local killBonus = GetModConfigData('KillBonus')

if killBonus then
    AddPrefabPostInit("world", function()
        AddPrefabPostInitAny(function(inst)
            inst:ListenForEvent("death", function()
                if GLOBAL.TheNet:GetIsClient() then return end  -- 激活地下金币掉落
                -- if GLOBAL.TheNet:GetIsClient() or GLOBAL.TheWorld:HasTag("cave") then return end
                if not inst:HasTag("wall") and inst:IsValid() and
                    inst.components.lootdropper and inst.components.health and
                    not inst.components.health.invincible and inst.components.combat and
                    inst.components.combat.target and
                    inst.components.combat.defaultdamage > 0 then
                    local mobPosition = inst:GetPosition()
                    local bounty = math.floor((inst.components.health.maxhealth *  killBonus))
                                               
                    if bounty > 0 then
                        for k, player in pairs(
                                             GLOBAL.FindPlayersInRange(
                                                 mobPosition.x, mobPosition.y,
                                                 mobPosition.z,
                                                 GLOBAL.TUNING.BOOMERANG_DISTANCE,
                                                 true)) do
                            local item = inst.components.lootdropper:SpawnLootPrefab("secoin")
                            item.components.secoin.amount = bounty
                            player:DoTaskInTime(.3, function()
                                player.components.seplayerstatus:givesecoin(item, item:GetPosition(), nil)
                            end)

                        end
                    end
                end
            end)
        end)
        -- end
    end)

    function c_givesecoins(amount)
        if GLOBAL.TheNet:GetIsClient() then return end
        local player = GLOBAL.GetPlayer()
        --GetPlayer().components.seplayerstatus:DoDeltaCoin(amount)
            player.components.seplayerstatus:DoDeltaCoin(amount)
        
    end
end

GLOBAL.c_givesecoins = c_givesecoins

AddClassPostConstruct("widgets/controls", Adduiseconomy)

