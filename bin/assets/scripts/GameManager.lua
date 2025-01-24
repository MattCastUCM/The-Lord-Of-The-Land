function comp:awake()
    print("Awake GameManager")
    _G["GameManager"] = self
end
function comp:start()
    Tapioca.loadScene("MainMenu")
end

function comp:initComponent(variables)
	
end

function comp:update(deltaTime)
	
end

function comp:handleEvent(id)
	print("GameManger: "..id )
end

function comp:emmmmmm()
    print("GameManger: emmmmmm" )

end