function comp:awake()
    print("Awake GameManager")
    _G["GameManager"] = self
    Tapioca.loadScene("MainMenu")
end

function comp:start()
    self.currentMoney = 10000
    self.totalScore = 0
    self.currentDay = 1
    self.highScore = 0

    self.propertiesPrices = { 100, 200, 300, 400 }
    self.numberProperties = { 0, 0, 0, 0 }


    self.stocksSceneLoaded = false
    self.stocksPrices = { 20, 50, 80, 42 }
    self.numberStocks = { 0, 0, 0, 0 }

    self.taxes = 10.0
end

function comp:updateScore()
    self.totalScore = self.currentMoney

    for i = 1, #self.propertiesPrices do
        self.totalScore = self.totalScore + self.propertiesPrices[i] * self.numberProperties[i]
    end
    for i = 1, #self.stocksPrices do
        self.totalScore = self.totalScore + self.stocksPrices[i] * self.numberStocks[i]
        
    end

    if self.totalScore > self.highScore then
        self.highScore = self.totalScore
    end
end

function comp:updatePrice()
    for i = 1, #self.propertiesPrices do
        local rnd=(math.random() * 0.4) - 0.2 +1
        self.propertiesPrices[i] = self.propertiesPrices[i] * rnd
        self.propertiesPrices[i]=  math.max(0, self.propertiesPrices[i])
        self:pushEvent("UPDATE_PRICE_" .. i, true)

    end
    for i = 1, #self.stocksPrices do
        local rnd=(math.random() * 0.4) - 0.2 +1
        self.stocksPrices[i] = self.stocksPrices[i] * rnd
        self.stocksPrices[i]=  math.max(0, self.stocksPrices[i])
        self:pushEvent("UPDATE_PRICE_" .. i, true)
    end
end

function comp:initComponent(variables)
	
end

function comp:update(deltaTime)
end

function comp:handleEvent(id)
    if id == "NEXT_DAY" then
        self.currentDay = self.currentDay + 1
        self:updateScore()

    end

    if id == "NEXT_WEEK" then
        self:updatePrice()
    end

    if id == "PAY_TAXES" then
        self:payTaxes()
    end

    if id == "ev_EXITGAME" then
    	Tapioca.exit()

    -- Victoria
    elseif id == "WIN" then
        self:toWin()
    -- Derrota
    elseif id == "NEXT_DAY" and self.totalScore < 0 then
        self:toGameOver()
        
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
    Tapioca.deleteScene("GraphScene")
    Tapioca.deleteScene("StocksScene")
    Tapioca.deleteScene("PropertyScene")
    Tapioca.deleteScene("CorruptionScene")
    Tapioca.deleteScene("CasinoScene")
    Tapioca.deleteScene("Game")

    Tapioca.deleteScene("EventScene")

    Tapioca.loadScene("GameOverScene")
end

function comp:toWin()
    Tapioca.deleteScene("GraphScene")
    Tapioca.deleteScene("StocksScene")
    Tapioca.deleteScene("PropertyScene")
    Tapioca.deleteScene("CorruptionScene")
    Tapioca.deleteScene("CasinoScene")
    Tapioca.deleteScene("Game")

    Tapioca.deleteScene("EventScene")

    Tapioca.loadScene("WinScene")
end

-- DINERO
function comp:getMoney(money)
    self.currentMoney = self.currentMoney + money
    self:calculateTotalCapital()
    self:pushEvent("MONEY_CHANGED", true)
end

function comp:spendMoney(money)
    self.currentMoney = self.currentMoney - money
    self:calculateTotalCapital()
    self:pushEvent("MONEY_CHANGED", true)
end

function comp:calculateTotalCapital()
    self.totalScore = self.currentMoney

    local result = 0
    for i, _ in pairs(self.propertiesPrices) do
        -- Multiply corresponding elements
        result = result + self.numberProperties[i] * self.propertiesPrices[i]
    end
    for i, _ in pairs(self.stocksPrices) do
        -- Multiply corresponding elements
        result = result + self.numberStocks[i] * self.stocksPrices[i]
    end

    self.totalScore = self.totalScore + result
    if self.totalScore > self.highScore then
        self.highScore = self.highScore
    end
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

