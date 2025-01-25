function comp:awake()
    print("Awake GameManager")
    _G["GameManager"] = self
end

function comp:start()
    Tapioca.loadScene("MainMenu")

    self.currentMoney = 0
end

function comp:initComponent(variables)
	
end

function comp:update(deltaTime)
	
end

function comp:handleEvent(id)
    if id == "ev_EXIT_GAME" then
    	-- Tapioca.exit()
    end
	print("GameManger: "..id )
end

function comp:emmmmmm()
    print("GameManger: emmmmmm" )

end