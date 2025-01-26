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
    desktopBg = {
        zIndex = 1,
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT / 2,
                scaleX = WINDOW_WIDTH,
                scaleY = WINDOW_HEIGHT
            },
            Image = {
                imagePath = "desktop/computerBg.png",
                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoBringToFrontOnFocus | ImGuiWindowFlags_NoFocusOnAppearing | ImGuiWindowFlags_NoInputs,
            },
            TabsManager = { },

        }
    },
    windowBg = {
        zIndex = 2,
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT / 2,
                scaleX = WINDOW_WIDTH,
                scaleY = WINDOW_HEIGHT
            },
            Image = {
                imagePath = "desktop/windowFrame.png",
                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoBringToFrontOnFocus | ImGuiWindowFlags_NoFocusOnAppearing | ImGuiWindowFlags_NoInputs,
            }
        }
    },
    graphButton = {
        zIndex = 2,
        components = {
            Transform = {
                positionX = 572.0,
                positionY = 839.0,
                scaleX = 60.0,
                scaleY = 50.0
            },
            ImageTextButton = {
                onClickId = "openGraph",
                imagePathNormal = "desktop/graphIconNormal.png",
                imagePathHover = "desktop/graphIconHovered.png",
                imagePathActive = "desktop/graphIconPressed.png"
            }
        }
    },
    stocksButton = {
        zIndex = 2,
        components = {
            Transform = {
                positionX = 631.0,
                positionY = 839.0,
                scaleX = 60.0,
                scaleY = 50.0
            },
            ImageTextButton = {
                onClickId = "openStocks",
                imagePathNormal = "desktop/stocksIconNormal.png",
                imagePathHover = "desktop/stocksIconHovered.png",
                imagePathActive = "desktop/stocksIconPressed.png"
            }
        }
    },
    housingButton = {
        zIndex = 2,
        components = {
            Transform = {
                positionX = 692.0,
                positionY = 837.0,
                scaleX = 60.0,
                scaleY = 50.0
            },
            ImageTextButton = {
                onClickId = "openHousing",
                imagePathNormal = "desktop/housingIconNormal.png",
                imagePathHover = "desktop/housingIconHovered.png",
                imagePathActive = "desktop/housingIconPressed.png"
            }
        }
    },
    corruptionButton = {
        zIndex = 2,
        components = {
            Transform = {
                positionX = 751.0,
                positionY = 838.0,
                scaleX = 60.0,
                scaleY = 50.0
            },
            ImageTextButton = {
                onClickId = "openCorruption",
                imagePathNormal = "desktop/corruptionIconNormal.png",
                imagePathHover = "desktop/corruptionIconHovered.png",
                imagePathActive = "desktop/corruptionIconPressed.png"
            }
        }
    },
    casinoButton = {
        zIndex = 2,
        components = {
            Transform = {
                positionX = 807.0,
                positionY = 838.0,
                scaleX = 60.0,
                scaleY = 50.0
            },
            ImageTextButton = {
                onClickId = "openCasino",
                imagePathNormal = "desktop/casinoIconNormal.png",
                imagePathHover = "desktop/casinoIconHovered.png",
                imagePathActive = "desktop/casinoIconPressed.png"
            }
        }
    },
    
    time = {
        components={
            Transform = {
                positionX = 1290.0,
                positionY = 839.0,
              
            },
            Text = {
                text = "",
                textSize = 30.0,
                textFontName = "FRABK.TTF"
            },
            TimeManager = { },
        }
    },
    graph = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH *0.065 + WINDOW_WIDTH *0.25,
                positionY = WINDOW_HEIGHT*0.65,
            },
            -- DrawGraph = { }
        }
    },
}
  