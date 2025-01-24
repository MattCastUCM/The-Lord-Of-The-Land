function debug(text)
	print("Se hizo clic/enter: " .. text)
end


function hola()
	print("hola" )
end

function MainMenuButton()
	Tapioca.deleteScene(self.splashScene)
	Tapioca.loadScene(self.mainScene)
end

function ExitButton()
	Tapioca.deleteScene(self.splashScene)
	Tapioca.loadScene(self.mainScene)
end

function HolaButton()
	_internal.comp.pushEvent(_internal.comp, "Hola", true, true)
end
