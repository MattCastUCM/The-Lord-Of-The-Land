function comp:awake()
    _G["EventManager"] = self
end

function comp:start()
    local eventTitle = self.object.scene:getHandler("eventTitle")
    self.eventTitleText = casts.fromComponent.Text(eventTitle:getComponent("Text"))

    local eventInfo = self.object.scene:getHandler("eventInfo")
    self.eventInfoText = casts.fromComponent.Text(eventInfo:getComponent("Text"))

    self.elapsedTime = 0.0
    self.enabledEvent = false
    self.object.scene.active = false
end

function comp:throwEvent(title, info)
    self.eventTitleText.text = title
    self.eventInfoText.text = info
    self.enabledEvent = true
    self.object.scene.active = true
    self.elapsedTime = 0.0
end

function comp:update(deltaTime)
    if self.enabledEvent then
        self.elapsedTime = self.elapsedTime + deltaTime
        if self.elapsedTime > 1.5 * 1000.0 then
            self.object.scene.active = false
            self.elapsedTime = 0.0
        end
    end
end