function comp:initComponent(variables)
    self.index = variables.index
    self.isStock = variables.isStock
end

function comp:start()
    self.gameManager = _G["GameManager"]
	self.text = casts.fromComponent.Text(self.object:getComponent("Text"))

    self:updateNumber()
end

function comp:handleEvent(id)
    if id == "INVERT_" .. self.index then
        self:updateNumber()
    end
end

function comp:updateNumber()
    local text = self.gameManager.numberProperties[self.index] .. " properties"
    if self.isStock then
        text = self.gameManager.numberStocks[self.index] .. " stocks"
    end
    self.text.text = text
end
