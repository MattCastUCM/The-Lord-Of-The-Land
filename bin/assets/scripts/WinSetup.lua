function comp:start()
    self.gameManager = _G["GameManager"]
    
    local highScoreText = self.object.scene:getHandler("highScoreText")
    local highScoreTextComponent = casts.fromComponent.Text(highScoreText:getComponent("Text"))

    local highScoreTextFormatted = self.gameManager.highScore
    while true do  
        highScoreTextFormatted, k = string.gsub(highScoreTextFormatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if (k==0) then
        break
        end
    end
    highScoreTextComponent.text = "$".. highScoreTextFormatted
    print(highScoreTextComponent.text)


    local scoreText = self.object.scene:getHandler("scoreText")
    local scoreTextComponent = casts.fromComponent.Text(scoreText:getComponent("Text"))

    local scoreTextFormatted = self.gameManager.totalScore
    while true do  
        scoreTextFormatted, k = string.gsub(scoreTextFormatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if (k==0) then
        break
        end
    end
    scoreTextComponent.text = "$".. scoreTextFormatted

    print(scoreTextComponent.text)
end 