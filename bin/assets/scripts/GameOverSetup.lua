function comp:start()
    self.gameManager = _G["GameManager"]
    
    local durationText = self.object.scene:getHandler("durationText")
    local durationTextComponent = casts.fromComponent.Text(durationText:getComponent("Text"))

    local scoreText = self.object.scene:getHandler("scoreText")
    local scoreTextComponent = casts.fromComponent.Text(scoreText:getComponent("Text"))

    durationTextComponent.text = self.gameManager.currentDay
    if self.gameManager.currentDay > 1 then
        durationTextComponent.text = durationTextComponent.text.. " days"
    else 
        durationTextComponent.text = durationTextComponent.text.. " day"
    end

    local formatted = self.gameManager.highScore
    while true do  
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if (k==0) then
        break
        end
    end
    scoreTextComponent.text = "$".. formatted
end 