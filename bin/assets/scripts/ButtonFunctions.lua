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

function toMainMenu()
	Tapioca.deleteScene("Game")
	Tapioca.loadScene("MainMenu")
end

function debug(text)
	print("Se hizo clic/enter: " .. text)
end

function AdiosButton()
	_G["GameManager"].emmmmmm()
end
