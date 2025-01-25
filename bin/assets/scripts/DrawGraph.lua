function comp:start()
	self.time = 0
    self.changeTime = 150
    self.mapa= {[-1] = 0,}
    self.cont=0
    self.cont2=0
    self.posX = 300
    self.posY = 500
    self.W= 20
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

function comp:update(deltaTime)
    if self.done then
        return
    end
    self.time = self.time + deltaTime

	if self.time >= self.changeTime and not self.done then
        while self.time > self.changeTime do
            _internal.comp.pushEvent(_internal.comp, "draw", false, true)
            self.mapa[self.cont2]= math.random(0, 10)
            self.cont2=self.cont2+1
            self.time = self.time - self.changeTime
            if self.cont2==100 then
                self.done = true
            end
	    end
    end
end

function comp:handleEvent(id)
    if id == "draw" then
        self:draw()
        self.cont=self.cont+1
        print("Se hizo algo: " )
    end
end

function comp:draw()
	local obj = self.object.scene:addObject("", 2)
	local p = {
		startPositionX = self.posX+self.W*self.cont+0.0,
		startPositionY= self.posY+self.mapa[self.cont-1]*self.H+0.0,
		endPositionX= self.posX+self.W+self.W*self.cont+0.0,
		endPositionY= self.posY+self.mapa[self.cont]*self.H+0.0,
        lineThickness=3.0,
        lineColorR=1.0,
        lineColorG=0.0,
        lineColorB=0.0,
	}
	obj:addComponent("Line",p)
	
end