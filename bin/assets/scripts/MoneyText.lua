function comp:start()
    self.gameManager = _G["GameManager"]
    
	self.textComponent = casts.fromComponent.Text(self.object:getComponent("Text"))
	self.transform = casts.fromComponent.Transform(self.object:getComponent("Transform"))

    self.initPos = self.transform.position
    self.initPos.y = self.initPos.y + self.textComponent.textSize / 2.0
    self.transform.position = self.initPos

    self.FONT_WIDTH = 28

    self:pushEvent("MONEY_CHANGED")
end

function comp:handleEvent(id)
    if id == "MONEY_CHANGED" then
        local formatted = self.gameManager.currentMoney
        while true do  
            formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
            if (k==0) then
            break
            end
        end
        self.textComponent.text = "$".. formatted
    
        local width = self.FONT_WIDTH * string.len(self.textComponent.text)
        self.initPos.x = self.initPos.x - width / 2.0
        self.transform.position = self.initPos
        self.initPos.x = self.initPos.x + width / 2.0
    end

    -- if id == "ev_CHEAT" then
    --     self.gameManager.currentMoney = self.gameManager.currentMoney * 10
    --     self:pushEvent("MONEY_CHANGED")
    -- end
end

-- function comp:update(deltaTime)
-- 	self.gameManager.currentMoney = self.gameManager.currentMoney + 10
--     self:pushEvent("MONEY_CHANGED")
-- end
