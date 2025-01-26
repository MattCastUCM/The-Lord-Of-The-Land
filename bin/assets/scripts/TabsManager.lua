function comp:start()
    self.windowBg = self.object.scene:getHandler("windowBg")
    self.windowBgTransform = casts.fromComponent.Transform(self.windowBg:getComponent("Transform"))

    self.windowVisible = false
    self.activeScreen = 0

    self.initScale = self.windowBgTransform.scale

    local newScale = self.windowBgTransform.scale
    newScale.x = 0.0
    newScale.y = 0.0
    newScale.z = 0.0
    self.windowBgTransform.scale = newScale

    self.currScreenName = ""

    Tapioca.loadScene("GraphScene")
    Tapioca.loadScene("StocksScene")
    Tapioca.loadScene("PropertyScene")
    Tapioca.loadScene("CorruptionScene")
    Tapioca.loadScene("CasinoScene")

    self.nUpdates = 0
end 

function comp:openWindow(index, sceneName)
    if self.activeScreen == index then
        self.windowVisible = false
        self.activeScreen = 0

        self:closeCurrWindow()

    else
        self.windowVisible = true
        self.activeScreen = index

        self:closeCurrWindow()

        if Tapioca.getScene(sceneName) == nil then
            Tapioca.loadScene(sceneName)
        else 
            Tapioca.getScene(sceneName).active = true
        end
        self.currScreenName = sceneName
    end
end


function comp:closeCurrWindow() 
    if self.currScreen ~= "" then
        if Tapioca.getScene(self.currScreenName) ~= nil then
            Tapioca.getScene(self.currScreenName).active = false
        end
        self.currScreenName = ""
    end
end

function comp:handleEvent(id)
    if id == "OPEN_GRAPH" or id == "OPEN_STOCKS" or id == "OPEN_HOUSING" or id == "OPEN_CORRUPTION" or id == "OPEN_CASINO" then
        if id == "OPEN_GRAPH" then
            self:openWindow(1, "GraphScene")

        elseif id == "OPEN_STOCKS" then
            self:openWindow(2, "StocksScene")

        elseif id == "OPEN_HOUSING" then
            self:openWindow(3, "PropertyScene")

        elseif id == "OPEN_CORRUPTION" then
            self:openWindow(4, "CorruptionScene")

        elseif id == "OPEN_CASINO" then
            self:openWindow(5, "CasinoScene")

        end

        local newScale = self.windowBgTransform.scale
        if not self.windowVisible then
            newScale.x = 0.0
            newScale.y = 0.0
            newScale.z = 0.0
        else
            newScale.x = self.initScale.x
            newScale.y = self.initScale.y
            newScale.z = self.initScale.z
        end
        self.windowBgTransform.scale = newScale

    end
end

function comp:update(deltaTime)
    if self.nUpdates < 1 then
        Tapioca.getScene("GraphScene").active = false
        Tapioca.getScene("StocksScene").active = false
        Tapioca.getScene("PropertyScene").active = false
        Tapioca.getScene("CorruptionScene").active = false
        Tapioca.getScene("CasinoScene").active = false
        self.nUpdates = self.nUpdates + 1
    end
end

function openGraph()
    _G["GameManager"]:pushEvent("OPEN_GRAPH", true)
end

function openStocks()
    _G["GameManager"]:pushEvent("OPEN_STOCKS", true)
end

function openHousing()
    _G["GameManager"]:pushEvent("OPEN_HOUSING", true)
end

function openCorruption()
    _G["GameManager"]:pushEvent("OPEN_CORRUPTION", true)
end

function openCasino()
    _G["GameManager"]:pushEvent("OPEN_CASINO", true)
end