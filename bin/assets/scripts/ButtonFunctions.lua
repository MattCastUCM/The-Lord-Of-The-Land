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

function restartGameOver()
	Tapioca.deleteScene("GameOverScene")
	Tapioca.loadScene("MainMenu")
end

function restartWin()
	Tapioca.deleteScene("WinScene")
	Tapioca.loadScene("MainMenu")
end

function toMainMenu()
	Tapioca.deleteScene("Game")
	Tapioca.loadScene("MainMenu")
end


-- PROPIEDADES
function buyProperty1()
    _G.GameManager:buyProperty(1)
end
function buyProperty2()
    _G.GameManager:buyProperty(2)
end
function buyProperty3()
    _G.GameManager:buyProperty(3)
end
function buyProperty4()
    _G.GameManager:buyProperty(4)
end

function sellProperty1()
    _G.GameManager:sellProperty(1)
end
function sellProperty2()
    _G.GameManager:sellProperty(2)
end
function sellProperty3()
	_G.GameManager:sellProperty(3)
end
function sellProperty4()
	_G.GameManager:sellProperty(4)
end
