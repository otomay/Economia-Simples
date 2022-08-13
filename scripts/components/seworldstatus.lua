require "SEscripts/itemlist"

local seworldstatus = Class(function(self, inst)  --世界商品表
    self.inst = inst

    TUNING.selist_food = {}
	TUNING.selist_cloth = {}
	TUNING.selist_smithing = {}
	TUNING.selist_resource = {}
	TUNING.selist_sail = {}
	TUNING.selist_precious = {}
	TUNING.selist_special = {}

	for n=1, #selist_food do
		TUNING.selist_food[n] = {}
		TUNING.selist_food[n].name = selist_food[n].name
		TUNING.selist_food[n].price = selist_food[n].price
	end
	for n=1, #selist_cloth do
		TUNING.selist_cloth[n] = {}
		TUNING.selist_cloth[n].name = selist_cloth[n].name
		TUNING.selist_cloth[n].price = selist_cloth[n].price
	end
	for n=1, #selist_smithing do
		TUNING.selist_smithing[n] = {}
		TUNING.selist_smithing[n].name = selist_smithing[n].name
		TUNING.selist_smithing[n].price = selist_smithing[n].price
	end
	for n=1, #selist_resource do
		TUNING.selist_resource[n] = {}
		TUNING.selist_resource[n].name = selist_resource[n].name
		TUNING.selist_resource[n].price = selist_resource[n].price
	end
	for n=1,#selist_sail do
		TUNING.selist_sail[n] = {}
		TUNING.selist_sail[n].name = selist_sail[n].name
		TUNING.selist_sail[n].price = selist_sail[n].price
	end
	for n=1,#selist_precious do
		TUNING.selist_precious[n] = {}
		TUNING.selist_precious[n].name = selist_precious[n].name
		TUNING.selist_precious[n].price = selist_precious[n].price
	end
	for n=1, #selist_special do
		TUNING.selist_special[n] = {}
		TUNING.selist_special[n].name = selist_special[n].name
		TUNING.selist_special[n].price = selist_special[n].price
	end

	--点金法杖低价分解珍贵品和专属装备
	TUNING.selist_low = {}
	for n=1, #selist_precious do
	    table.insert(TUNING.selist_low, selist_precious[n])
	end
	for n=1, #selist_special do
	    table.insert(TUNING.selist_low, selist_special[n])
	end
	for n=1, #selist_blueprint do
	    table.insert(TUNING.selist_low, selist_blueprint[n])
	end

	TUNING.SEseasonchange = false

    self:changelist()  --方法判定涨跌
	self:seasoncheck()  --方法检查季节
	self:floatprice()  --浮动涨跌
	self:daycheck()  --方法检查天数变换
end)

function seworldstatus:changelist()
	--判定张跌
	if TheWorld.components.worldstate.data.season == "spring" then
		TUNING.seseasonfood = .5 TUNING.seseasoncloth = 1 TUNING.seseasonsmithing = 1 TUNING.seseasonresource = 1 TUNING.seseasonsail = 1
	end
	if TheWorld.components.worldstate.data.season == "summer" then
		TUNING.seseasonfood = 1 TUNING.seseasoncloth = .5 TUNING.seseasonsmithing = 1.5 TUNING.seseasonresource = 1.5 TUNING.seseasonsail = 1.5
	end
	if TheWorld.components.worldstate.data.season == "autumn" then
		TUNING.seseasonfood = 1 TUNING.seseasoncloth = 1 TUNING.seseasonsmithing = 1 TUNING.seseasonresource = .5 TUNING.seseasonsail = .5
	end
	if TheWorld.components.worldstate.data.season == "winter" then
		TUNING.seseasonfood = 1.5 TUNING.seseasoncloth = 1.5 TUNING.seseasonsmithing = .5 TUNING.seseasonresource = 1 TUNING.seseasonsail = 1
	end
	TUNING.todaySeseasonfood = TUNING.seseasonfood TUNING.todaySeseasoncloth = TUNING.seseasoncloth TUNING.todaySeseasonsmithing = TUNING.seseasonsmithing TUNING.todaySeseasonresource = TUNING.seseasonresource TUNING.todaySeseasonsail = TUNING.seseasonsail

	--改变价格
	for k,v in pairs(selist_food) do TUNING.selist_food[k].price = math.ceil(v.price*TUNING.seseasonfood) end
	for k,v in pairs(selist_cloth) do TUNING.selist_cloth[k].price = math.ceil(v.price*TUNING.seseasoncloth) end
	for k,v in pairs(selist_smithing) do TUNING.selist_smithing[k].price = math.ceil(v.price*TUNING.seseasonsmithing) end
	for k,v in pairs(selist_resource) do TUNING.selist_resource[k].price = math.ceil(v.price*TUNING.seseasonresource) end
	for k,v in pairs(selist_sail) do TUNING.selist_sail[k].price = math.ceil(v.price*TUNING.seseasonsail) end

	--合并清单供点金法杖使用
	TUNING.allgoods = {}
	for n=1, #TUNING.selist_food do
	    table.insert(TUNING.allgoods, TUNING.selist_food[n])
	end
	for n=1, #TUNING.selist_cloth do
	    table.insert(TUNING.allgoods, TUNING.selist_cloth[n])
	end
	for n=1, #TUNING.selist_smithing do
	    table.insert(TUNING.allgoods, TUNING.selist_smithing[n])
	end
	for n=1, #TUNING.selist_resource do
	    table.insert(TUNING.allgoods, TUNING.selist_resource[n])
	end
	for n=1, #TUNING.selist_sail do
	    table.insert(TUNING.allgoods, TUNING.selist_sail[n])
	end

	--ui辅助
	if TUNING.SEseasonchange == false then
		TUNING.SEseasonchange = true
	else
		TUNING.SEseasonchange = false
	end
end

function seworldstatus:seasoncheck()
	TheWorld:ListenForEvent("seasontick", function()  --监听季节变换事件，季节变换调用函数改变价格涨跌
		self:changelist()
	end)
end

function seworldstatus:floatprice()
	local delta= .1
	local tf = {}
	local td = {}
	--tf=TUNING.todaySesesonfood tc=TUNING.todaySeseasoncloth tsm=TUNING.todaySeseasonsmithing tso=TUNING.todaySeseasonresource
	--TUNING.todaySeseasonfood = TUNING.seseasonfood TUNING.todaySeseasoncloth = TUNING.seseasoncloth TUNING.todaySeseasonsmithing = TUNING.seseasonsmithing TUNING.todaySeseasonresource = TUNING.seseasonresource

	tf[1] = TUNING.todaySeseasonfood
	td[1] = TUNING.seseasonfood
	tf[2] = TUNING.todaySeseasoncloth
	td[2] = TUNING.seseasoncloth
	tf[3] = TUNING.todaySeseasonsmithing
	td[3] = TUNING.seseasonsmithing
	tf[4] = TUNING.todaySeseasonresource
	td[4] = TUNING.seseasonresource
	tf[5] = TUNING.seseasonsail
	td[5] = TUNING.todaySeseasonsail

	for n = 1, 5 do
		local max = td[n]+delta
		local min = td[n]-delta
		local delta1 = max-tf[n]
		local delta2 = min-tf[n]
		local r=math.random(delta2*100,delta1*100)
		if r>0 then
			tf[n] = tf[n]+(math.random(delta1*100)/delta1/100)^2*delta1
		elseif r < 0 then
			tf[n] = tf[n]+(math.random(-delta2*100)/delta2/100)^2*delta2
		else
			tf[n] = tf[n]
		end
	end

	TUNING.todaySeseasonfood=tf[1]

	TUNING.todaySeseasoncloth=tf[2]

	TUNING.todaySeseasonsmithing=tf[3]

	TUNING.todaySeseasonresource=tf[4]

	TUNING.todaySeseasonsail=tf[5]




	--改变价格
	for k,v in pairs(selist_food) do TUNING.selist_food[k].price = math.ceil(v.price*TUNING.todaySeseasonfood) end
	for k,v in pairs(selist_cloth) do TUNING.selist_cloth[k].price = math.ceil(v.price*TUNING.todaySeseasoncloth) end
	for k,v in pairs(selist_smithing) do TUNING.selist_smithing[k].price = math.ceil(v.price*TUNING.todaySeseasonsmithing) end
	for k,v in pairs(selist_resource) do TUNING.selist_resource[k].price = math.ceil(v.price*TUNING.todaySeseasonresource) end
	for k,v in pairs(selist_sail) do TUNING.selist_sail[k].price = math.ceil(v.price*TUNING.todaySeseasonsail) end

	--合并清单供点金法杖使用
	TUNING.allgoods = {}
	for n=1, #TUNING.selist_food do
	    table.insert(TUNING.allgoods, TUNING.selist_food[n])
	end
	for n=1, #TUNING.selist_cloth do
	    table.insert(TUNING.allgoods, TUNING.selist_cloth[n])
	end
	for n=1, #TUNING.selist_smithing do
	    table.insert(TUNING.allgoods, TUNING.selist_smithing[n])
	end
	for n=1, #TUNING.selist_resource do
	    table.insert(TUNING.allgoods, TUNING.selist_resource[n])
	end
	for n=1, #TUNING.selist_resource do
	    table.insert(TUNING.allgoods, TUNING.selist_sail[n])
	end

	--print(#TUNING.allgoods)

end


function seworldstatus:daycheck()
	TheWorld:ListenForEvent("cycleschanged", function()
		self:floatprice()
	end)
end

return seworldstatus