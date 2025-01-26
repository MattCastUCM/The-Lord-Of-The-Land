function comp:awake()
    print("Awake GameManager")
    _G["GameManager"] = self
    Tapioca.loadScene("MainMenu")
end

function comp:start()
    self.currentMoney = 1000
    self.totalScore = 0
    self.currentDay = 1
    self.highScore = 0

    self.propertySceneLoaded = false
    self.propertiesPrices = { 100, 200, 300, 400 }
    self.numberProperties = { 0, 0, 0, 0 }

    self.stocksSceneLoaded = false
    self.stocksPrices = { 0, 0, 0, 0 }
    self.numberStocks = { 0, 0, 0, 0 }

    self.taxes = 10.0
end

function comp:initComponent(variables)
	
end

function comp:update(deltaTime)

end

function comp:handleEvent(id)
    if id == "NEXT_DAY" then
        self.currentDay = self.currentDay + 1
    end

    if id == "PAY_TAXES" then
        self:payTaxes()
    end

    if id == "ev_EXITGAME" then
    	Tapioca.exit()

    -- Victoria
    elseif id == "WIN" then
        -- self:toWin()
        
    -- Derrota
    elseif id == "NEXT_DAY" and self.totalScore < 0 then
        -- self:toGameOver()
        
    end
    
	-- print("GameManger: "..id )
end

function comp:payTaxes()
    self.taxes = self.taxes * 1.005
    local taxesAux = math.floor(self.taxes + 0.5)
    _G["EventManager"]:throwEvent("Taxes", "-" .. taxesAux .. "$")
    self:spendMoney(taxesAux)
end


function comp:toGameOver()
    Tapioca.deleteScene("Game")
    Tapioca.loadScene("GameOverScene")
end

function comp:toWin()
    Tapioca.deleteScene("Game")
    Tapioca.loadScene("WinScene")
end

-- DINERO
function comp:getMoney(money)
    self.currentMoney = self.currentMoney + money
    self:pushEvent("MONEY_CHANGED", true)
end

function comp:spendMoney(money)
    self.currentMoney = self.currentMoney - money
    self:pushEvent("MONEY_CHANGED", true)
end

-- PROPIEDADES
function comp:buyProperty(index)
    local price = self.propertiesPrices[index]
    if self.currentMoney >= price then
        self:spendMoney(price)

        self.numberProperties[index] = self.numberProperties[index] + 1

        local eventName = "INVERT_" .. index
        self:pushEvent(eventName, true)
    end
end

function comp:sellProperty(index)
    local nProperties = self.numberProperties[index]
    if nProperties > 0 then
        local price = self.propertiesPrices[index]
        self:getMoney(price)

        self.numberProperties[index] = nProperties - 1
        
        local eventName = "INVERT_" .. index
        self:pushEvent(eventName, true)
    end
end

function comp:updatePropertyPrice(index, newPrice)
    self.propertiesPrices[index] = newPrice
    local eventName = "UPDATE_PRICE" .. index
    self:pushEvent(eventName, true)
end

-- STOCKS
-- PROPIEDADES
function comp:buyStocks(index)
    local price = self.stocksPrices[index]
    if self.currentMoney >= price then
        self.currentMoney = self.currentMoney - price

        self.numberStocks[index] = self.numberStocks[index] + 1

        local eventName = "INVERT_" .. index
        self:pushEvent(eventName, true)

        self:pushEvent("MONEY_CHANGED", true)
    end
end

function comp:sellStocks(index)
    local nProperties = self.numberStocks[index]
    if nProperties > 0 then
        local price = self.stocksPrices[index]
        self.currentMoney = self.currentMoney + price
        
        self.numberStocks[index] = nProperties - 1
        
        local eventName = "INVERT_" .. index
        self:pushEvent(eventName, true)

        self:pushEvent("MONEY_CHANGED", true)
    end
end

function comp:updateStocksPrice(index, newPrice)
    self.stocksPrices[index] = newPrice
    local eventName = "UPDATE_PRICE_" .. index
    self:pushEvent(eventName, true)
end