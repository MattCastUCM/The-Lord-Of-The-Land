scene = {
    {
        components = {
            CameraComponent = { },
            SplashScreenComponent = {
                changeTime = 2000,
                splashScene = "StartScene",
                mainScene = "Managers"
            }
        }
    },
    backgroundImage = {
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
  