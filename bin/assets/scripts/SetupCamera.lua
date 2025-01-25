function comp:start()
	self.transform = casts.fromComponent.Transform(self.object:getComponent("Transform"))

    self.TARGET_ROT_X = 0.0
    self.TARGET_ROT_Y = -1.0

    self.timer = 0.0
    self.ANIM_TIME = 1000.0

    print(self.transform.rotation:toEuler().x)
    print(self.transform.rotation:toEuler().y)

    self.rotSpdX = (self.TARGET_ROT_X - self.transform.rotation:toEuler().x) / self.ANIM_TIME
    self.rotSpdY = (self.TARGET_ROT_Y - self.transform.rotation:toEuler().y) / self.ANIM_TIME
    
    print(self.rotSpdY)
    print(self.rotSpdY)
end


function comp:update(deltaTime)
    if self.timer < self.ANIM_TIME then
        local newRot = self.transform.rotation:toEuler()
        
        -- newRot.vector.y = newRot.vector.y - self.rotSpdY * deltaTime
        -- self.transform.rotation = newRot
        
        self.timer = self.timer + deltaTime
    end

end
