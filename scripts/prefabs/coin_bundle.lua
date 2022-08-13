local assets=
{
	Asset("ANIM", "anim/coin_bundle.zip"),
    Asset("ATLAS", "images/inventoryimages/coin_bundle.xml"),
    Asset("IMAGE", "images/inventoryimages/coin_bundle.tex"),
}

local prefabs = {


}

local function OnDescribe()
    return "金币"
end

local function OnUnwrap(inst,doer)  --回调函数
    if doer ~= nil and doer.SoundEmitter ~= nil then
        doer.SoundEmitter:PlaySound("dontstarve/common/together/packaged")
    end
    inst:Remove()
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("coin_bundle")
    inst.AnimState:SetBuild("coin_bundle")
    inst.AnimState:PlayAnimation("idle")

    inst:AddTag("coin_container")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")
    --in modmain.lua,when spawn it or uesitem,do--inst.components.inspectable:SetDescription("内含"..inst.components.coin_container.amount.."个金币")

	inst:AddComponent("inventoryitem")      --是物品栏物品
    inst.components.inventoryitem.imagename = "coin_bundle"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/coin_bundle.xml"

    inst:AddComponent("coin_container")  --添加金币容器组件
    inst.components.coin_container.amount = 1
    inst.components.coin_container:SetOnUnwrapFn(OnUnwrap)  --设置回调函数

    return inst
end

return Prefab("coin_bundle", fn, assets, prefabs)