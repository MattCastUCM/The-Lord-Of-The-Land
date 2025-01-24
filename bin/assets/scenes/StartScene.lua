scene = {
    {
        components = {
            CameraComponent = {
                bgColorR = 133 / 255.0,
                bgColorG = 187 / 255.0,
                bgColorB = 101 / 255.0
            },
            SplashScreenComponent = {
                changeTime = 2000,
                splashScene = "StartScene",
                mainScene = "Managers"
            }
        }
    },
    madeWithText = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT * 0.4
            },
            Text = {
                text = "Made with",
                textSize = WINDOW_WIDTH / 25,
                textFontName = "Dollar Bill.ttf"
            }
        }
    },
    EngineLogo = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT / 2,
                scaleX = WINDOW_WIDTH / 2,
                scaleY = WINDOW_HEIGHT * 0.089
            },
            Image = {
                imagePath = "engineLogo.png"
            }
        }
    }
}
  