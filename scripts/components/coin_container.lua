local function amount(self,amount) self.inst.amount:set(amount) end

local function oncanbeunwrap(self, canbeunwrap)
    if canbeunwrap then
        self.inst:AddTag("coin_container")
    else
        self.inst:RemoveTag("coin_container")
    end
end

local coin_container = Class(function(self, inst)
    self.inst = inst
    self.amount =  1
    self.onunwrapfn = nil
    self.canbeunwrap = true
end,
nil,
{
    canbeunwrap = oncanbeunwrap,
})

function coin_container:Unwrap(doer,target)  --动作函数
    doer.components.seplayerstatus:DoDeltaCoin(self.amount,true)
    self.onunwrapfn(self.inst,doer)
end

function coin_container:SetOnUnwrapFn(fn)  --设置回调函数
    self.onunwrapfn = fn
end

function coin_container:OnSave()  --保存
    local data = {
        amount = self.amount,
    }
    return data
end

function coin_container:OnLoad(data)  --读取
    self.amount = data.amount or 0
end


return coin_container