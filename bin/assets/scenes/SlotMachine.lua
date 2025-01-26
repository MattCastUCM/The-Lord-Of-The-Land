scene = {
    {
        components = {
            Slots = {
                windowWidth = WINDOW_WIDTH,
                windowHeight = WINDOW_HEIGHT
            },
            CameraComponent = {}
        }
    },
    {
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
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT / 2 - 200,
                scaleX = 100.0,
                scaleY = 100.0
            },
            Button = {
                onClickId = "RollSlots",
                text = "Roll"
            }
        }
    }
}