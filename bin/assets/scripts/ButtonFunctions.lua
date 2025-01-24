function skipSplashScreen()
	Tapioca.deleteScene("StartScene")
	Tapioca.loadScene("MainMenu")
end

function closeGame()
	Tapioca.exit()
end

function startGame()
	-- Tapioca.exit()
end

function MainMenuButton()
	Tapioca.deleteScene("MainMenu")
	Tapioca.loadScene("Game")
end



function debug(text)
	print("Se hizo clic/enter: " .. text)
end

function hola()
	print("hola" )
end

function HolaButton()
	_internal.comp.pushEvent(_internal.comp, "Hola", true, true)
end

function AdiosButton()
	_G["GameManager"].emmmmmm()
end
