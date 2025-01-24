function comp:start()
	self.time = 0
end

-- function comp:initComponent(variables)
-- 	if type(variables.changeTime) ~= "number" then
-- 		error("La variable changeTime no es un numero.")
-- 	end
-- 	self.changeTime = variables.changeTime
-- 	-- self.splashScene = variables.splashScene
-- 	-- self.mainScene = variables.mainScene
--     print("Se hizo cl: " )

-- end

-- function comp:update(deltaTime)
-- 	if self.time >= self.changeTime and not self.done then
-- 		--Tapioca.deleteScene(self.splashScene)
-- 		--Tapioca.loadScene(self.mainScene)
--         _internal.comp.pushEvent(_internal.comp, "eventoID", true, false)
--         print("Se hizo clic/enter: " )
-- 		self.done = true
-- 	elseif not self.done then
-- 		self.time = self.time + deltaTime
-- 	end
-- end

function comp:handleEvent(id)
	print("Evento: "..id )
	self:addLine(100.0,100.0,200.0,200.0)
end

function comp:addLine(posX,posY,posX2,posY2)
	local obj = self.object.scene:addObject("", 1)
	local p = {
		startPositionX = posX,
		startPositionY= posY,
		endPositionX= posX2,
		endPositionY= posY2
	}
	obj:addComponent("Line",p)
	
end