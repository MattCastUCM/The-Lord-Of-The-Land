scene = {
    {
        components = {
            CorruptionManager={}
        }
    },
    Button_1 = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = 250.0,
                scaleX = 700.0,
                scaleY = 120.0
            },
            Button = {
                onClickId = "Corruption_Button_1",
                text = "Hola",
            }
        }
    },
    Button_2={
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = 425.0,
                scaleX = 700.0,
                scaleY = 120.0
            },
            Button = {
                onClickId = "Corruption_Button_2",
                text = "Hola",
            },
        }
    },
    Button_3={
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = 600.0,
                scaleX = 700.0,
                scaleY = 120.0
            },
            Button = {
                onClickId = "Corruption_Button_3",
                text = "Hola",
            },
            
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                -- InitY - ImgH - OffsetY/2 - OffsetY/2
                positionY = WINDOW_HEIGHT-360,
                scaleX = 1.0,
                scaleY = 1.0
            },
            Text = {
                text = "500$",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 50.0,

                textColorR = 0.0,
                textColorG = 0.0,
                textColorB = 0.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
                    }
            }
        }


}