local icons = {
    "Cherry",
    "Lemon",
    "Orange",
    "Grapes",
    "Sevens"
}
-- "Again" va fuera

local probs = {
    Cherry = 0.40,
    Lemon = 0.28,
    Orange = 0.17,
    Grapes = 0.09,
    Sevens = 0.01,
    Again = 0.05
}

local rewards = {
    Cherry = 5000,
    Lemon = 10000,
    Orange = 100000,
    Grapes = 500000,
    Sevens = 10000000
}

-- Comprobamos que las probabilidades sumen 100%
local sum = 0
for k, v in pairs(probs) do
    sum = sum + v
end
if sum < 0.99999 or sum > 1.00001 then
    error("Las probabilidades suman " .. sum .. " en vez de 1.")
end

comp.time = 0

function comp:initComponent(variables)
    self.windowWidth = variables.windowWidth
    self.windowHeight = variables.windowHeight
end

function comp:start()
    RollSlots = function ()
        if not self.activated then
            if self.nextFree then
                self:roll()
            elseif GameManager.currentMoney >= 10000 then
                GameManager.currentMoney = GameManager.currentMoney - 10000
                self:pushEvent("MONEY_CHANGED", true, false)
                self:roll()
            else
                self.text.text = "Insufficient money!"
            end
        end
    end

    local ourScene = self.object.scene
    self.obj1 = ourScene:addObject("", 1)
    self.obj2 = ourScene:addObject("", 1)
    self.obj3 = ourScene:addObject("", 1)
    self.textObj = ourScene:addObject("", 1)

    local params = {
        positionX = self.windowWidth / 2 - 200,
        positionY = self.windowHeight / 2,
        scaleX = 100.0,
        scaleY = 100.0
    }
    self.obj1:addComponent("Transform", params)
    params.positionX = params.positionX + 200
    self.obj2:addComponent("Transform", params)
    params.positionX = params.positionX + 200
    self.obj3:addComponent("Transform", params)
    params.positionX = params.positionX - 200
    params.positionY = params.positionY + 200
    self.textObj:addComponent("Transform", params)

    params = {
        imagePath = "casino/Roll.png"
    }
    self.img1 = casts.fromComponent.Image(self.obj1:addComponent("Image", params))
    self.img2 = casts.fromComponent.Image(self.obj2:addComponent("Image", params))
    self.img3 = casts.fromComponent.Image(self.obj3:addComponent("Image", params))

    self.text = casts.fromComponent.Text(self.textObj:addComponent("Text", { text = "" }))
end

local function getResult()
    local icon1, icon2, icon3 = nil, nil, nil
    -- Primera
    local rng = math.random(#icons)
    icon1 = icons[rng]
    -- Segunda
    rng = math.random() -- Debería dar un numero de 0 a 1
    if rng <= 0.3 then -- 30% de que sea el mismo icono
        icon2 = icon1
    else
        -- Cogemos un icono distinto del primero
        rng = math.random(#icons - 1)
        for k, v in ipairs(icons) do
            if v ~= icon1 then
                if rng == 1 then
                    icon2 = v
                else
                    rng = rng - 1
                end
            end
        end
    end
    -- Tercera
    if icon1 == icon2 then
        -- Usar probabilidades
        rng = math.random()
        for k, v in pairs(probs) do
            if rng <= v then
                icon3 = k
                break
            else
                rng = rng - v
            end
        end
    else
        -- Da igual lo que salga
        rng = math.random(#icons)
        icon3 = icons[rng]
    end

    return icon1, icon2, icon3
end

function comp:roll()
    if not self.activated then
        self.activated = true
        self.time = 0
        self.icon1, self.icon2, self.icon3 = getResult()
        self.revealed1, self.revealed2, self.revealed3 = false, false, false
        self.text.text = "Wait for it..."
        self.img1.imagePath = "casino/Roll.png"
        self.img1:updateTexture()
        self.img2.imagePath = "casino/Roll.png"
        self.img2:updateTexture()
        self.img3.imagePath = "casino/Roll.png"
        self.img3:updateTexture()
    end
end

function comp:update(deltaTime)
    if self.activated then
        self.time = self.time + deltaTime
        if self.time >= 1000 then
            if not self.revealed1 then
                self.revealed1 = true
                self.img1.imagePath = "casino/" .. self.icon1 .. ".png"
                self.img1:updateTexture()
            elseif not self.revealed2 then
                self.revealed2 = true
                self.img2.imagePath = "casino/" .. self.icon2 .. ".png"
                self.img2:updateTexture()
            elseif not self.revealed3 then
                self.revealed3 = true
                self.img3.imagePath = "casino/" .. self.icon3 .. ".png"
                self.img3:updateTexture()

                if self.icon1 == self.icon2 and self.icon1 == self.icon3 then
                    self.text.text = "Win!"
                    GameManager.currentMoney = GameManager.currentMoney + rewards[self.icon1]
                    self:pushEvent("MONEY_CHANGED", true, false)
                elseif self.icon3 == "Again" then
                    self.nextFree = true
                else
                    self.text.text = "Lose..."
                end 
                self.activated = false
            end
            self.time = self.time - 1000
        end
    end
end
