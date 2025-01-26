function comp:initComponent(variables)
    self.index = variables.index
    self.isStock = variables.isStock
end

function comp:start()
    self.gameManager = _G["GameManager"]
	self.text = casts.fromComponent.Text(self.object:getComponent("Text"))

    self:updatePrice()
end

function comp:handleEvent(id)
    if id == "UPDATE_PRICE_" .. self.index then
        self:updatePrice()
    end
end

function comp:updatePrice()
    local text = "$" .. self.gameManager.propertiesPrices[self.index] 
    if self.isStock then
        local text = "$" .. self.gameManager.stocksPrices[self.index]
    end
    self.text.text = text
end