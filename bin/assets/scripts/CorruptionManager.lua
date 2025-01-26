function comp:awake()

end

function comp:start()
    self.datos = require("./assets/corruptionData")
    self.choose = false
    -- local total = #self.datos
    -- print("Total de datos: " .. total)
    -- self:imprimirDatos()
    
    self.Button_1 = self.object.scene:getHandler("Button_1")
    self.Button_2 = self.object.scene:getHandler("Button_2")
    self.Button_3 = self.object.scene:getHandler("Button_3")
    self.ButtonComponent_1 = casts.fromComponent.Button(self.Button_1:getComponent("Button"))
    self.ButtonComponent_2 = casts.fromComponent.Button(self.Button_2:getComponent("Button"))
    self.ButtonComponent_3 = casts.fromComponent.Button(self.Button_3:getComponent("Button"))
    
    self:nextEvent()

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

function comp:nextEvent()
    self.b1=math.random(1, #self.datos._texts)
    self.b2=math.random(1, #self.datos._texts)
    self.b3=math.random(1, #self.datos._texts)
    self.ButtonComponent_1.text = self.datos._texts[self.b1].text
    self.ButtonComponent_2.text = self.datos._texts[self.b2].text
    self.ButtonComponent_3.text = self.datos._texts[self.b3].text
end


function comp:chooseEvent(id)
    if not self.choose and  _G["GameManager"].currentMoney < 500 then
        return
    end

    self.choose = true
    if id ~= self.b1 then
        self.ButtonComponent_1.text = "---"
    end
    if id ~= self.b2 then
        self.ButtonComponent_2.text = "---"
    end
    if id ~= self.b3 then
        self.ButtonComponent_3.text = "---"
    end
    
    
    _G["GameManager"].currentMoney =  _G["GameManager"].currentMoney - 500

    if math.random(0,1) > self.datos._texts[id].prob then
        print("CorruptionManager: No")
       return 
    end
    print("CorruptionManager: Yes")

    for nombre, valor in pairs(self.datos._type) do
        print(nombre .. " = " .. self.datos._texts[id][nombre]    )
        if valor < 5 then
            _G["GameManager"]:updateStocksPrice(valor, _G["GameManager"].stocksPrices[valor] * (100.0+ self.datos._texts[id][nombre]) /100.0)
            
        elseif valor == 5 then
            for i = 1, #_G["GameManager"].propertiesPrices do
                _G["GameManager"]:updatePropertyPrice(i, _G["GameManager"].propertiesPrices[i] * (100.0 + self.datos._texts[id][nombre]) / 100.0)
            end
        end
    end
end

function comp:initComponent(variables)
	
end

function comp:update(deltaTime)
	
end

function comp:handleEvent(id)
    if id == "Corruption_Button_1" then
        self:chooseEvent(self.b1)
    end
    if id == "Corruption_Button_2" then
        self:chooseEvent(self.b2)
    end
    if id == "Corruption_Button_3" then
        self:chooseEvent(self.b3)
    end
    if id == "New_Corruption" then
        self:nextEvent()
        self.choose = false
    end
end


function Corruption_Button_1()
    _G["GameManager"]:pushEvent("Corruption_Button_1", true)
end

function Corruption_Button_2()
    _G["GameManager"]:pushEvent("Corruption_Button_2", true)
end

function Corruption_Button_3()
    _G["GameManager"]:pushEvent("Corruption_Button_3", true)
end