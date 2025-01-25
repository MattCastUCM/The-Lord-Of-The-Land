function skipSplashScreen()
	Tapioca.deleteScene("StartScene")
	Tapioca.loadScene("Managers")
end

function closeGame()
	Tapioca.exit()
end

function startGame()
	Tapioca.deleteScene("MainMenu")
	Tapioca.loadScene("Game")
end


function debug(text)
	print("Se hizo clic/enter: " .. text)
end


function ToMainMenuButton()
	Tapioca.deleteScene("Game")
	Tapioca.loadScene("MainMenu")
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
