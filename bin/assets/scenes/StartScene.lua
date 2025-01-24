scene = {
    {
        components = {
            CameraComponent = { },
            SplashScreenComponent = {
                changeTime = 5000,
                splashScene = "StartScene",
                mainScene = "Managers"
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
            ImageTextButton = {
                onClickId = "skipSplashScreen",
                imagePathNormal = "mainMenuBackground.png",
                imagePathHover = "mainMenuBackground.png",
                imagePathActive = "mainMenuBackground.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    }
}
  