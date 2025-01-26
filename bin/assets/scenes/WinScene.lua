scene = {
    {
        components = {
            WinSetup = {}
        }
    },
    scoreText = {
        components = {
            Transform = {
                positionX = 436.0,
                positionY = 685.0
            },
            Text = {
                text = "",
                textSize = 80.0,
                textFontName = "IndieFlower-Regular.ttf",
                textColorR = 31.0 / 255,
                textColorG = 31.0 / 255,
                textColorB = 31.0 / 255
            },
        }
    },
    highScoreText = {
        components = {
            Transform = {
                positionX = 436.0,
                positionY = 467.0
            },
            Text = {
                text = "",
                textSize = 80.0,
                textFontName = "IndieFlower-Regular.ttf",
                textColorR = 31.0 / 255,
                textColorG = 31.0 / 255,
                textColorB = 31.0 / 255
            },
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
                imagePath = "winBackground.png",
                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoBringToFrontOnFocus | ImGuiWindowFlags_NoFocusOnAppearing | ImGuiWindowFlags_NoInputs,
            }
        }
    },
    playAgainButton = {
        components = {
            Transform = {
                positionX = 436.0,
                positionY = 860.0,
                scaleX = 372.0,
                scaleY = 118.0
            },
            ImageTextButton = {
                onClickId = "restartWin",
                imagePathNormal = "buttons/mainMenuNormal.png",
                imagePathHover = "buttons/mainMenuHovered.png",
                imagePathActive = "buttons/mainMenuPressed.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    }
}