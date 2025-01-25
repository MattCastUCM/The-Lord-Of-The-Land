scene = {
    camera = {
        components = {
            Transform = {
                positionY = 0.4,
                positionZ = -1.2
            },
            CameraComponent = { 
                bgColorR = 0.0,
                bgColorG = 0.0,
                bgColorB = 0.0,
                targetToLookX = 0.0,
                targetToLookY = 0.0,
                -- targetToLookZ = -5.0
            },
        }
    },
    light = {
        components = {
            Transform = {
                positionY = 0.0,
                rotationZ = 0.0
            },
            LightDirComp = {
                directionX = 0.0,
                directionY = -2.0,
                directionZ = -1.0,
                mainLight = true,
                colorR = 1.0,
                colorG = 1.0,
                colorB = 1.0,
                colorA = 1.0,
                powerScale = 2.0
            },  
        },
    },

    
    table = {
        components = {
            Transform = {
                positionX = 0.0,
                positionY = -3.6,
                positionZ = -4.0,
                scaleX = 1.1,
                scaleY = 1.1,
                scaleZ = 1.1,
                rotationX = -90.0,
                rotationY = -90.0,
                rotationZ = 0.0,
            },
            MeshRenderer = {
                meshName = "models/Desk.mesh",
                materialName = "materialtable"
            }
        }
    },
    boba = {
        components = {
            Transform = {
                positionX = -1.6,
                positionY = -0.4,
                positionZ = -4.3,
                scaleX = 0.25,
                scaleY = 0.25,
                scaleZ = 0.25,
                rotationX = -90.0,
                rotationY = -90.0,
                rotationZ = 0.0,
            },
            MeshRenderer = {
                meshName = "models/_Bobba.mesh",
                materialName = "Material.001"
            }
        }
    },
    computer = {
        components = {
            Transform = {
                positionX = 0.0,
                positionY = 0.5,
                positionZ = -4.3,
                scaleX = 0.8,
                scaleY = 0.8,
                scaleZ = 0.8,
                rotationX = -90.0,
                rotationY = -90.0,
                rotationZ = -2.0,
            },
            MeshRenderer = {
                meshName = "models/ComputerMonitor.mesh",
                materialName = "Material"
            }
        }
    },

    
    moneyText = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH - 10.0,
                positionY = 10.0
            },
            Text = {
                text = "$1023102",
                textSize = 85.0,
                textFontName = "BebasNeue-Regular.ttf"
            },
            MoneyText = { }
            
        }
    },
    UI = {
		components = {
			Transform = {
				positionX = 0.0,
				positionY = 0.0,
				positionZ = 0.0,
				scaleX = 1.0,
				scaleY = 1.0,
				scaleZ = 1.0,
				rotationX = 0.0,
				rotationY = 0.0,
				rotationZ = 0.0
			},
		},
		children = {
			Graph={
                components = {
                    Transform = {
                        positionX = WINDOW_WIDTH *0.065 + WINDOW_WIDTH *0.25,
                        positionY = WINDOW_HEIGHT*0.74,
                        scaleX = WINDOW_WIDTH/15.5,
                        scaleY = WINDOW_WIDTH/15.5
                    },
                    ImageTextButton = {
                        onClickId = "ToMainMenuButton",
                        imagePathNormal = "desktopicons/GraphIcon.png",
                        imagePathHover = "desktopicons/GraphIcon.png",
                        imagePathActive = "desktopicons/GraphIcon.png",
                        normalColorA = 0.0,
                        hoverColorA = 0.0,
                        activeColorA = 0.0,
                    }
                }
            },
            Stocks={
                components = {
                    Transform = {
                        positionX = WINDOW_WIDTH *0.065*2+ WINDOW_WIDTH *0.25,
                        positionY = WINDOW_HEIGHT*0.74,
                        scaleX = WINDOW_WIDTH/15.5,
                        scaleY = WINDOW_WIDTH/15.5
                    },
                    ImageTextButton = {
                        onClickId = "ToMainMenuButton",
                        imagePathNormal = "desktopicons/StocksIcon.png",
                        imagePathHover = "desktopicons/StocksIcon.png",
                        imagePathActive = "desktopicons/StocksIcon.png",
                        normalColorA = 0.0,
                        hoverColorA = 0.0,
                        activeColorA = 0.0,
                    }
                }
            },
            Housing={
                components = {
                    Transform = {
                        positionX = WINDOW_WIDTH *0.065*3+ WINDOW_WIDTH *0.25,
                        positionY = WINDOW_HEIGHT*0.74,
                        scaleX = WINDOW_WIDTH/14.5,
                        scaleY = WINDOW_WIDTH/14.5
                    },
                    ImageTextButton = {
                        onClickId = "ToMainMenuButton",
                        imagePathNormal = "desktopicons/HousingIcon.png",
                        imagePathHover = "desktopicons/HousingIcon.png",
                        imagePathActive = "desktopicons/HousingIcon.png",
                        normalColorA = 0.0,
                        hoverColorA = 0.0,
                        activeColorA = 0.0,
                    }
                }
            },
            Corruption={
                components = {
                    Transform = {
                        positionX = WINDOW_WIDTH *0.065*4+ WINDOW_WIDTH *0.25,
                        positionY = WINDOW_HEIGHT*0.74,
                        scaleX = WINDOW_WIDTH/14.5,
                        scaleY = WINDOW_WIDTH/14.5
                    },
                    ImageTextButton = {
                        onClickId = "ToMainMenuButton",
                        imagePathNormal = "desktopicons/CorruptionIcon.png",
                        imagePathHover = "desktopicons/CorruptionIcon.png",
                        imagePathActive = "desktopicons/CorruptionIcon.png",
                        normalColorA = 0.0,
                        hoverColorA = 0.0,
                        activeColorA = 0.0,
                    }
                }
            },
            Casino={
                components = {
                    Transform = {
                        positionX = WINDOW_WIDTH *0.065*5+ WINDOW_WIDTH *0.25,
                        positionY = WINDOW_HEIGHT*0.74,
                        scaleX = WINDOW_WIDTH/14.5,
                        scaleY = WINDOW_WIDTH/14.5
                    },
                    ImageTextButton = {
                        onClickId = "ToMainMenuButton",
                        imagePathNormal = "desktopicons/CasinoIcon.png",
                        imagePathHover = "desktopicons/CasinoIcon.png",
                        imagePathActive = "desktopicons/CasinoIcon.png",
                        normalColorA = 0.0,
                        hoverColorA = 0.0,
                        activeColorA = 0.0,
                    }
                }
            }
        }
    },
    Time={
        components={
            Transform = {
                positionX = WINDOW_WIDTH *0.065*6+ WINDOW_WIDTH *0.25,
                positionY = WINDOW_HEIGHT*0.74,
              
            },
            Text = {
                text = "$1023102",
                textSize = 85.0,
                textFontName = "BebasNeue-Regular.ttf"
            },
            TimeManager = { },
            -- prueba = { }
        }
    },
     {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH *0.065 + WINDOW_WIDTH *0.25,
                positionY = WINDOW_HEIGHT*0.65,
            },
            DrawGraph = { }
        }
    }
}
  