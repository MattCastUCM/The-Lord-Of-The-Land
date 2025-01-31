function comp:start()
	self.time = 0
    self.cont_day=4
    self.changeTime = 250
    self.done = false
    self.date = "15-09-2005"
    self.textComponent = casts.fromComponent.Text(self.object:getComponent("Text"))
    self.textComponent.text = self.date
    self.os = require("os")
    
    self.lastMonth = 0
    self:advance_day(self.date)
end

function comp:advance_day(date)
    local day, month, year = date:match("(%d+)-(%d+)-(%d+)")
    day = tonumber(day)
    month = tonumber(month)
    year = tonumber(year)
    local time = self.os.time({year = year, month = month, day = day}) + 86400 -- Add one day (86400 seconds)

    if month ~= self.lastMonth then
        self.lastMonth = month
        self:pushEvent("PAY_TAXES", true)
        self:pushEvent("New_Corruption", true)
    end
    

    return self.os.date("%d-%m-%Y", time)
end


function comp:update(deltaTime)
    if self.done then
        return
    end
    self.time = self.time + deltaTime

	if self.time >= self.changeTime and not self.done then
        while self.time > self.changeTime do
            self:pushEvent("NEXT_DAY", true)
            self.cont_day = (self.cont_day + 1) % 7
            
            if self.cont_day == 1 then
                self:pushEvent("NEXT_WEEK", true)

            end
            self.time = self.time - self.changeTime
            
            self.date = self:advance_day(self.date)
            self.textComponent.text = self.date
            -- print(self.date)
            if self.date == "15-09-2008" then
                self.done = true
                self:pushEvent("WIN", true)
            end
	    end
    end
end

function comp:handleEvent(id)

end
