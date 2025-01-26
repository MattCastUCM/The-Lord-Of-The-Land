function comp:start()
    self.windowBg = self.object.scene:getHandler("windowBg")
    self.windowBgTransform = casts.fromComponent.Transform(self.windowBg:getComponent("Transform"))
    self.windowVisible = false
    self.activeWindow = 0

    self.initScale = self.windowBgTransform.scale

    local newScale = self.windowBgTransform.scale
    newScale.x = 0.0
    newScale.y = 0.0
    newScale.z = 0.0
    self.windowBgTransform.scale = newScale
end 

function comp:handleEvent(id)
    if id == "OPEN_GRAPH" or id == "OPEN_STOCKS" or id == "OPEN_HOUSING" or id == "OPEN_CORRUPTION" or id == "OPEN_CASINO" then
        if id == "OPEN_GRAPH" then
            if self.activeWindow == 1 then
                self.windowVisible = false
                self.activeWindow = 0
            else
                self.windowVisible = true
                self.activeWindow = 1
            end

        elseif id == "OPEN_STOCKS" then
            if self.activeWindow == 2 then
                self.windowVisible = false
                self.activeWindow = 0
            else
                self.windowVisible = true
                self.activeWindow = 2
            end

        elseif id == "OPEN_HOUSING" then
            if self.activeWindow == 3 then
                self.windowVisible = false
                self.activeWindow = 0
            else
                self.windowVisible = true
                self.activeWindow = 3
            end

        elseif id == "OPEN_CORRUPTION" then
            if self.activeWindow == 4 then
                self.windowVisible = false
                self.activeWindow = 0
            else
                self.windowVisible = true
                self.activeWindow = 4
            end

        elseif id == "OPEN_CASINO" then
            if self.activeWindow == 5 then
                self.windowVisible = false
                self.activeWindow = 0
            else
                self.windowVisible = true
                self.activeWindow = 5
            end

        end

        local newScale = self.windowBgTransform.scale

        if self.windowVisible == false then
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


function openGraph()
    _G["GameManager"]:pushEvent("OPEN_GRAPH", true, true)
end
function openStocks()
    _G["GameManager"]:pushEvent("OPEN_STOCKS", true, true)
end
function openHousing()
    _G["GameManager"]:pushEvent("OPEN_HOUSING", true, true)
end
function openCorruption()
    _G["GameManager"]:pushEvent("OPEN_CORRUPTION", true, true)
end
function openCasino()
    _G["GameManager"]:pushEvent("OPEN_CASINO", true, true)
end