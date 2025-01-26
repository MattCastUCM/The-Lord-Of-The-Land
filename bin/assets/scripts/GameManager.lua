function comp:awake()
    print("Awake GameManager")
    _G["GameManager"] = self
end

function comp:start()
    Tapioca.loadScene("MainMenu")

    self.currentMoney = 0
    self.totalScore = 21312313
    self.currentDay = 1
    self.highScore = 1203
end

function comp:initComponent(variables)
	
end

function comp:update(deltaTime)
	
end

function comp:handleEvent(id)
    if id == "ev_EXITGAME" then
    	Tapioca.exit()
    end
	print("GameManger: "..id )
end

function comp:emmmmmm()
    print("GameManger: emmmmmm" )

end