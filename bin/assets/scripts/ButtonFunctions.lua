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
	Tapioca.loadScene("EventScene")
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

-- STOCKS
function buyStocks1()
    _G.GameManager:buyStocks(1)
end
function buyStocks2()
    _G.GameManager:buyStocks(2)
end
function buyStocks3()
    _G.GameManager:buyStocks(3)
end
function buyStocks4()
    _G.GameManager:buyStocks(4)
end

function sellStocks1()
    _G.GameManager:sellStocks(1)
end
function sellStocks2()
    _G.GameManager:sellStocks(2)
end
function sellStocks3()
	_G.GameManager:sellStocks(3)
end
function sellStocks4()
	_G.GameManager:sellStocks(4)
end