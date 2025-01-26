scene = {
    {
        components = {
            EventManager = {
            }
        },
    },
    eventTitle = {
        components = {
            Transform = {
                positionX = 1714.0 ,
                positionY = 280.0 - 70/2,
                scaleX = 1.0,
                scaleY = 1.0
            },
            Text = {
                text = "Evento",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 60.0,

                textColorR = 0.0,
                textColorG = 0.0,
                textColorB = 0.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            },
        }
    },
    eventInfo = {
        components = {
            Transform = {
                positionX = 1714.0,
                positionY = 280.0 + 70/2,
                scaleX = 1.0,
                scaleY = 1.0
            },
            Text = {
                text = "Eventito",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 50.0,

                textColorR = 0.0,
                textColorG = 0.0,
                textColorB = 0.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            },
        }
    },
    {
        zIndex = 1,
        components = {
            Transform = {
                positionX = 1714.0,
                positionY = 280.0,
                scaleX = 300.0,
                scaleY = 300.0
            },
            Image = {
                imagePath = "roundedSquare.png",

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    }
}