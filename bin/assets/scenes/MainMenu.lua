scene = {
    camera = {
        components = {
            Transform = {
                positionY = 1.4,
                positionZ = -2.3
            },
            CameraComponent = { 
                bgColorR = 0.0,
                bgColorG = 0.0,
                bgColorB = 0.0,
                targetToLookX = 0.0,
                targetToLookY = -1.5,
                targetToLookZ = -5.0
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
    light2 = {
        components = {
            Transform = {
                positionY = 0.0,
                rotationZ = 0.0
            },
            LightDirComp = {
                directionX = 0.0,
                directionY = -2.0,
                directionZ = 1.0,
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


    startButton = {
        components = {
            Transform = {
                positionX = 1450.0,
                positionY = 340.0,
                scaleX = 511.0,
                scaleY = 343.0
            },
            ImageTextButton = {
                onClickId = "startGame",
                imagePathNormal = "buttons/yesButtonNormal.png",
                imagePathHover = "buttons/yesButtonHovered.png",
                imagePathActive = "buttons/yesButtonPressed.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    },
    exitButton={
        components = {
            Transform = {
                positionX = 1450.0,
                positionY = 810.0,
                scaleX = 520.0,
                scaleY = 292.0
            },
            ImageTextButton = {
                onClickId = "closeGame",
                imagePathNormal = "buttons/noButtonNormal.png",
                imagePathHover = "buttons/noButtonHovered.png",
                imagePathActive = "buttons/noButtonPressed.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    },
}
