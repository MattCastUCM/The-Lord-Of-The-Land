function debug(text)
	print("Se hizo clic/enter: " .. text)
end


function hola()
	print("hola" )
end

function MainMenuButton()
	Tapioca.deleteScene("MainMenu")
	Tapioca.loadScene("Game")
end

function ExitButton()
	Tapioca.exit()
end

function HolaButton()
	_internal.comp.pushEvent(_internal.comp, "Hola", true, true)
end

function AdiosButton()
	_G["GameManager"].emmmmmm()
end
