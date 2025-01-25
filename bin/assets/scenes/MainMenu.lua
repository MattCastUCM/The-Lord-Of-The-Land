scene = {
    {
        components = {
            CameraComponent = { }
        }
    },

    bgImage = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT / 2,
                scaleX = WINDOW_WIDTH,
                scaleY = WINDOW_HEIGHT
            },
            Image = {
                imagePath = "mainMenuBg.png",
                windowFlags= ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoBringToFrontOnFocus | ImGuiWindowFlags_NoFocusOnAppearing |ImGuiWindowFlags_NoInputs
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
    bgButton={
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT / 2,
                scaleX = WINDOW_WIDTH,
                scaleY = WINDOW_HEIGHT
            },
            Image = {
                imagePath = "mainMenuBackground.png"
            }
        }
    }
}
