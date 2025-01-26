function comp:start()
    self.transform = casts.fromComponent.Transform(self.object:getComponent("Transform"))
    self.initPos = self.transform.position

	self.time = 0
    self.changeTime = 150
    self.mapa= {[-1] = 0,}
    self.cont=0
    self.cont2=0
    self.posX = self.initPos.x
    self.posY = self.initPos.y
    self.W= 20*35/ (365*3)
    self.H= 20
    self.done = false

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


function comp:handleEvent(id)
    if id == "draw" then
        self:draw()
        self.cont=self.cont+1
    end
    if id == "nextDay" then
        self:pushEvent("draw", false, true)
        self.mapa[self.cont2]= math.random(0, 10)
        self.cont2=self.cont2+1
    end
    if id == "WIN" then
        self.done = true
    end
end

function comp:draw()
	local obj = self.object.scene:addObject("", 2)
	local p = {
		startPositionX = self.posX+self.W*self.cont+0.0,
		startPositionY= self.posY-self.mapa[self.cont-1]*self.H+0.0,
		endPositionX= self.posX+self.W+self.W*self.cont+0.0,
		endPositionY= self.posY-self.mapa[self.cont]*self.H+0.0,
        lineThickness=3.0,
        lineColorR=1.0,
        lineColorG=0.0,
        lineColorB=0.0,
	}
	obj:addComponent("Line",p)
	
end