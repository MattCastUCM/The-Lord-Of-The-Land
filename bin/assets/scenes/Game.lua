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

    {
        components = {
            DrawGraph = { }
        }
    },
    
    ExitButton={
        components = {
            Transform = {
                positionX = WINDOW_WIDTH *0.07,
                positionY = WINDOW_HEIGHT*0.9,
                scaleX = WINDOW_WIDTH/14.0,
                scaleY = WINDOW_WIDTH/14.0
            },
            ImageTextButton = {
                onClickId = "toMainMenu",
                imagePathNormal = "Button/return1.png",
                imagePathHover = "Button/return2.png",
                imagePathActive = "Button/return3.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    },

}
  