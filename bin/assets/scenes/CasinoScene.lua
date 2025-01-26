scene = {
    {
        components = {
            Slots = {
                windowWidth = WINDOW_WIDTH,
                windowHeight = WINDOW_HEIGHT
            },
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