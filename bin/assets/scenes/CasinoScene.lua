scene = {
    {
        components = {
            Slots = {
                windowWidth = WINDOW_WIDTH,
                windowHeight = WINDOW_HEIGHT,
                imageFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove |
                    ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoInputs
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
                text = "Roll",
            }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT / 2 - 350,
                scaleX = 1014/4,
                scaleY = 221/4
            },
            Image = {
                imagePath = "casino/CasinoBanner.png",

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoInputs
            }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 - 15,
                positionY = WINDOW_HEIGHT / 2 - 20,
                scaleX = 1014/2,
                scaleY = 659/2
            },
            Image = {
                imagePath = "casino/slotmachine.png",

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoInputs
            }
        },
        zIndex = 20
    }
}