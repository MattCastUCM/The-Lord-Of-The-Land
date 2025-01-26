scene = {
    graph = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH * 0.065 + WINDOW_WIDTH * 0.25,
                positionY = WINDOW_HEIGHT* 0.65,
            },
            DrawGraph = { }
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
            -- Image = {
            --     imagePath = "casino/CasinoBanner.png",

            --     windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
            --     ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoInputs
            -- }
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
                imagePath = "desktop/GraphAxis.png",

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoInputs
            }
        }
    }
}