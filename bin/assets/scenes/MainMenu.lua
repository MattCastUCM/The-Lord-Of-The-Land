scene = {
    {
        components = {
            CameraComponent = { }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT / 2,
                scaleX = WINDOW_WIDTH,
                scaleY = WINDOW_HEIGHT
            },
            Image = {
                name = "Tapiocimagen",
                imagePath = "mainMenuBackground.png",
                windowFlags= ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoBringToFrontOnFocus | ImGuiWindowFlags_NoFocusOnAppearing |ImGuiWindowFlags_NoInputs
            }
           }
    },
    StartImageTextButton = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 1.5,
                positionY = WINDOW_HEIGHT / 3,
                scaleX = WINDOW_WIDTH/6.0,
                scaleY = WINDOW_WIDTH/6.0,
            },
            ImageTextButton = {
                onClickId = "MainMenuButton",
                imagePathNormal = "Button/play3.png",
                imagePathHover = "Button/play1.png",
                imagePathActive = "Button/play2.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    },
    ExitImageTextButton = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 1.5,
                positionY = WINDOW_HEIGHT*2 /3,
                scaleX = WINDOW_WIDTH/6.0,
                scaleY = WINDOW_WIDTH/6.0,
            },
            ImageTextButton = {
                onClickId = "ExitButton",
                imagePathNormal = "Button/play3.png",
                imagePathHover = "Button/play1.png",
                imagePathActive = "Button/play2.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    },
    {
        components = {
            prueba={}
        }
    }
}
  