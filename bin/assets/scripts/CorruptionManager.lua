function comp:awake()

end

function comp:start()
    self.datos = require("./assets/corruptionData")
    local total = #self.datos
    print("Total de datos: " .. total)
    self:imprimirDatos()
    
    self.Button_1 = self.object.scene:getHandler("Button_1")
    self.Button_2 = self.object.scene:getHandler("Button_2")
    self.Button_3 = self.object.scene:getHandler("Button_3")
    self.ButtonComponent_1 = casts.fromComponent.Button(self.Button_1:getComponent("Button"))
    self.ButtonComponent_2 = casts.fromComponent.Button(self.Button_2:getComponent("Button"))
    self.ButtonComponent_3 = casts.fromComponent.Button(self.Button_3:getComponent("Button"))
    -- numero = math.random(1, 10)
    self.ButtonComponent_1.text = self.datos._texts[1].text
    self.ButtonComponent_2.text = self.datos._texts[2].text
    self.ButtonComponent_3.text = self.datos._texts[10].text

end

function comp:imprimirDatos()
    print("Tipos:")
    for nombre, valor in pairs(self.datos._type) do
        print("  " .. nombre .. " = " .. valor)
    end

    print("\nTextos y efectos:")
    for i, item in ipairs(self.datos._texts) do
        print("Texto " .. i .. ": " .. item.text)
        print("  Probabilidad: " .. item.prob)
        print("  Military: " .. item.Military)
        print("  Agricultural: " .. item.Agricultural)
        print("  Energy: " .. item.Energy)
        print("  Healthcare: " .. item.Healthcare)
        print("  Housing: " .. item.Housing)
    end
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