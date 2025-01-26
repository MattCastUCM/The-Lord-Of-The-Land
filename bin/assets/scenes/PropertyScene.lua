scene = {
    -- CASA 1
    {
        -- InitX --> WINDOW_WIDTH / 2 - 200
        -- InitY --> WINDOW_HEIGHT / 2 - 150
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 - 200,
                -- InitY - ImgH - OffsetY/2 - OffsetY/2
                positionY = WINDOW_HEIGHT / 2 - 150 - 110 - 40/2 - 40/2,
                scaleX = 1.0,
                scaleY = 1.0
            },
            Text = {
                text = "0$",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 37.0,

                textColorR = 0.0,
                textColorG = 0.0,
                textColorB = 0.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            },
            PriceText = {
                index = 1,
                isStock = false
            }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 - 200,
                -- InitY - ImgH / 2 - OffsetY/2
                positionY = WINDOW_HEIGHT / 2 - 150 - 110/2 - 40/2,
                -- ButtonW * 2 + ButtonOffsetX + ImgOffsetW
                scaleX = 71.0 * 2.0 + 45.0,
                scaleY = 110.0
            },
            Image = {
                imagePath = "houses/propiedad1.PNG",

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 - 200,
                positionY = WINDOW_HEIGHT / 2 - 150,
                scaleX = 1.0,
                scaleY = 1.0
            },
            Text = {
                text = "0 properties",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 30.0,

                textColorR = 0.0,
                textColorG = 0.0,
                textColorB = 0.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            },
            NumberText = {
                index = 1,
                isStock = false
            }
        }
    },
    {
        components = {
            Transform = {
                -- InitX - ButtonW / 2 - ButtonOffsetX / 2
                positionX = WINDOW_WIDTH / 2 - 200 - 71/2 - 50/2,
                -- InitY + ButtonH / 2 + OffsetY / 2
                positionY = WINDOW_HEIGHT / 2 - 150 + 71/2 + 40/2,
                scaleX = 71.0,
                scaleY = 71.0
            },
            Button = {
                onClickId = "buyProperty1",
                text = "BUY",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 31.0,

                textColorNormalR = 1.0,
                textColorNormalG = 1.0,
                textColorNormalB = 1.0,
                textColorNormalA = 1.0,

                textColorHoverR = 1.0,
                textColorHoverG = 1.0,
                textColorHoverB = 1.0,
                textColorHoverA = 1.0,

                textColorActiveR = 1.0,
                textColorActiveG = 1.0,
                textColorActiveB = 1.0,
                textColorActiveA = 1.0,

                normalColorR = 0.2,
                normalColorG = 0.7,
                normalColorB = 0.2,
                normalColorA = 1.0,

                hoverColorR = 0.1,
                hoverColorG = 0.8,
                hoverColorB = 0.1,
                hoverColorA = 1.0,

                activeColorR = 0.05,
                activeColorG = 0.9,
                activeColorB = 0.05,
                activeColorA = 1.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    },
    {
        components = {
            Transform = {
                -- InitX - ButtonW / 2 - ButtonOffsetX / 2
                positionX = WINDOW_WIDTH / 2 - 200 + 71/2 + 50/2,
                -- InitY + ButtonH / 2 + OffsetY / 2
                positionY = WINDOW_HEIGHT / 2 - 150 + 71/2 + 40/2,
                scaleX = 71.0,
                scaleY = 71.0
            },
            Button = {
                onClickId = "sellProperty1",
                text = "SELL",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 31.0,

                textColorNormalR = 1.0,
                textColorNormalG = 1.0,
                textColorNormalB = 1.0,
                textColorNormalA = 1.0,

                textColorHoverR = 1.0,
                textColorHoverG = 1.0,
                textColorHoverB = 1.0,
                textColorHoverA = 1.0,

                textColorActiveR = 1.0,
                textColorActiveG = 1.0,
                textColorActiveB = 1.0,
                textColorActiveA = 1.0,

                normalColorR = 0.7,
                normalColorG = 0.2,
                normalColorB = 0.2,
                normalColorA = 1.0,

                hoverColorR = 0.6,
                hoverColorG = 0.1,
                hoverColorB = 0.1,
                hoverColorA = 1.0,

                activeColorR = 0.5,
                activeColorG = 0.05,
                activeColorB = 0.05,
                activeColorA = 1.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    },

    -- CASA 2
    {
        -- InitX --> WINDOW_WIDTH / 2 - 200
        -- InitY --> WINDOW_HEIGHT / 2 + 125
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 - 200,
                -- InitY - ImgH - OffsetY/2 - OffsetY/2
                positionY = WINDOW_HEIGHT / 2 + 125 - 110 - 40/2 - 40/2,
                scaleX = 1.0,
                scaleY = 1.0
            },
            Text = {
                text = "0$",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 37.0,

                textColorR = 0.0,
                textColorG = 0.0,
                textColorB = 0.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            },
            PriceText = {
                index = 2,
                isStock = false
            }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 - 200,
                -- InitY - ImgH / 2 - OffsetY/2
                positionY = WINDOW_HEIGHT / 2 + 125 - 110/2 - 40/2,
                -- ButtonW * 2 + ButtonOffsetX + ImgOffsetW
                scaleX = 71.0 * 2.0 + 45.0,
                scaleY = 110.0
            },
            Image = {
                imagePath = "houses/propiedad2.PNG",

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 - 200,
                positionY = WINDOW_HEIGHT / 2 + 125,
                scaleX = 1.0,
                scaleY = 1.0
            },
            Text = {
                text = "0 properties",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 30.0,

                textColorR = 0.0,
                textColorG = 0.0,
                textColorB = 0.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            },
            NumberText = {
                index = 2,
                isStock = false
            }
        }
    },
    {
        components = {
            Transform = {
                -- InitX - ButtonW / 2 - ButtonOffsetX / 2
                positionX = WINDOW_WIDTH / 2 - 200 - 71/2 - 50/2,
                -- InitY + ButtonH / 2 + OffsetY / 2
                positionY = WINDOW_HEIGHT / 2 + 125 + 71/2 + 40/2,
                scaleX = 71.0,
                scaleY = 71.0
            },
            Button = {
                onClickId = "buyProperty2",
                text = "BUY",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 31.0,

                textColorNormalR = 1.0,
                textColorNormalG = 1.0,
                textColorNormalB = 1.0,
                textColorNormalA = 1.0,

                textColorHoverR = 1.0,
                textColorHoverG = 1.0,
                textColorHoverB = 1.0,
                textColorHoverA = 1.0,

                textColorActiveR = 1.0,
                textColorActiveG = 1.0,
                textColorActiveB = 1.0,
                textColorActiveA = 1.0,

                normalColorR = 0.2,
                normalColorG = 0.7,
                normalColorB = 0.2,
                normalColorA = 1.0,

                hoverColorR = 0.1,
                hoverColorG = 0.8,
                hoverColorB = 0.1,
                hoverColorA = 1.0,

                activeColorR = 0.05,
                activeColorG = 0.9,
                activeColorB = 0.05,
                activeColorA = 1.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    },
    {
        components = {
            Transform = {
                -- InitX - ButtonW / 2 - ButtonOffsetX / 2
                positionX = WINDOW_WIDTH / 2 - 200 + 71/2 + 50/2,
                -- InitY + ButtonH / 2 + OffsetY / 2
                positionY = WINDOW_HEIGHT / 2 + 125 + 71/2 + 40/2,
                scaleX = 71.0,
                scaleY = 71.0
            },
            Button = {
                onClickId = "sellProperty2",
                text = "SELL",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 31.0,

                textColorNormalR = 1.0,
                textColorNormalG = 1.0,
                textColorNormalB = 1.0,
                textColorNormalA = 1.0,

                textColorHoverR = 1.0,
                textColorHoverG = 1.0,
                textColorHoverB = 1.0,
                textColorHoverA = 1.0,

                textColorActiveR = 1.0,
                textColorActiveG = 1.0,
                textColorActiveB = 1.0,
                textColorActiveA = 1.0,

                normalColorR = 0.7,
                normalColorG = 0.2,
                normalColorB = 0.2,
                normalColorA = 1.0,

                hoverColorR = 0.6,
                hoverColorG = 0.1,
                hoverColorB = 0.1,
                hoverColorA = 1.0,

                activeColorR = 0.5,
                activeColorG = 0.05,
                activeColorB = 0.05,
                activeColorA = 1.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    },

    -- CASA 3
    {
        -- InitX --> WINDOW_WIDTH / 2 + 200
        -- InitY --> WINDOW_HEIGHT / 2 - 150
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 + 200,
                -- InitY - ImgH - OffsetY/2 - OffsetY/2
                positionY = WINDOW_HEIGHT / 2 - 150 - 110 - 40/2 - 40/2,
                scaleX = 1.0,
                scaleY = 1.0
            },
            Text = {
                text = "0$",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 37.0,

                textColorR = 0.0,
                textColorG = 0.0,
                textColorB = 0.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            },
            PriceText = {
                index = 3,
                isStock = false
            }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 + 200,
                -- InitY - ImgH / 2 - OffsetY/2
                positionY = WINDOW_HEIGHT / 2 - 150 - 110/2 - 40/2,
                -- ButtonW * 2 + ButtonOffsetX + ImgOffsetW
                scaleX = 71.0 * 2.0 + 45.0,
                scaleY = 110.0
            },
            Image = {
                imagePath = "houses/propiedad3.PNG",

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 + 200,
                positionY = WINDOW_HEIGHT / 2 - 150,
                scaleX = 1.0,
                scaleY = 1.0
            },
            Text = {
                text = "0 properties",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 30.0,

                textColorR = 0.0,
                textColorG = 0.0,
                textColorB = 0.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            },
            NumberText = {
                index = 3,
                isStock = false
            }
        }
    },
    {
        components = {
            Transform = {
                -- InitX - ButtonW / 2 - ButtonOffsetX / 2
                positionX = WINDOW_WIDTH / 2 + 200 - 71/2 - 50/2,
                -- InitY + ButtonH / 2 + OffsetY / 2
                positionY = WINDOW_HEIGHT / 2 - 150 + 71/2 + 40/2,
                scaleX = 71.0,
                scaleY = 71.0
            },
            Button = {
                onClickId = "buyProperty3",
                text = "BUY",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 31.0,

                textColorNormalR = 1.0,
                textColorNormalG = 1.0,
                textColorNormalB = 1.0,
                textColorNormalA = 1.0,

                textColorHoverR = 1.0,
                textColorHoverG = 1.0,
                textColorHoverB = 1.0,
                textColorHoverA = 1.0,

                textColorActiveR = 1.0,
                textColorActiveG = 1.0,
                textColorActiveB = 1.0,
                textColorActiveA = 1.0,

                normalColorR = 0.2,
                normalColorG = 0.7,
                normalColorB = 0.2,
                normalColorA = 1.0,

                hoverColorR = 0.1,
                hoverColorG = 0.8,
                hoverColorB = 0.1,
                hoverColorA = 1.0,

                activeColorR = 0.05,
                activeColorG = 0.9,
                activeColorB = 0.05,
                activeColorA = 1.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    },
    {
        components = {
            Transform = {
                -- InitX - ButtonW / 2 - ButtonOffsetX / 2
                positionX = WINDOW_WIDTH / 2 + 200 + 71/2 + 50/2,
                -- InitY + ButtonH / 2 + OffsetY / 2
                positionY = WINDOW_HEIGHT / 2 - 150 + 71/2 + 40/2,
                scaleX = 71.0,
                scaleY = 71.0
            },
            Button = {
                onClickId = "sellProperty3",
                text = "SELL",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 31.0,

                textColorNormalR = 1.0,
                textColorNormalG = 1.0,
                textColorNormalB = 1.0,
                textColorNormalA = 1.0,

                textColorHoverR = 1.0,
                textColorHoverG = 1.0,
                textColorHoverB = 1.0,
                textColorHoverA = 1.0,

                textColorActiveR = 1.0,
                textColorActiveG = 1.0,
                textColorActiveB = 1.0,
                textColorActiveA = 1.0,

                normalColorR = 0.7,
                normalColorG = 0.2,
                normalColorB = 0.2,
                normalColorA = 1.0,

                hoverColorR = 0.6,
                hoverColorG = 0.1,
                hoverColorB = 0.1,
                hoverColorA = 1.0,

                activeColorR = 0.5,
                activeColorG = 0.05,
                activeColorB = 0.05,
                activeColorA = 1.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    },

    -- CASA 4
    {
        -- InitX --> WINDOW_WIDTH / 2 + 200
        -- InitY --> WINDOW_HEIGHT / 2 + 125
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 + 200,
                -- InitY - ImgH - OffsetY/2 - OffsetY/2
                positionY = WINDOW_HEIGHT / 2 + 125 - 110 - 40/2 - 40/2,
                scaleX = 1.0,
                scaleY = 1.0
            },
            Text = {
                text = "0$",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 37.0,

                textColorR = 0.0,
                textColorG = 0.0,
                textColorB = 0.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            },
            PriceText = {
                index = 4,
                isStock = false
            }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 + 200,
                -- InitY - ImgH / 2 - OffsetY/2
                positionY = WINDOW_HEIGHT / 2 + 125 - 110/2 - 40/2,
                -- ButtonW * 2 + ButtonOffsetX + ImgOffsetW
                scaleX = 71.0 * 2.0 + 45.0,
                scaleY = 110.0
            },
            Image = {
                imagePath = "houses/propiedad4.png",

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 + 200,
                positionY = WINDOW_HEIGHT / 2 + 125,
                scaleX = 1.0,
                scaleY = 1.0
            },
            Text = {
                text = "0 properties",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 30.0,

                textColorR = 0.0,
                textColorG = 0.0,
                textColorB = 0.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            },
            NumberText = {
                index = 4,
                isStock = false
            }
        }
    },
    {
        components = {
            Transform = {
                -- InitX - ButtonW / 2 - ButtonOffsetX / 2
                positionX = WINDOW_WIDTH / 2 + 200 - 71/2 - 50/2,
                -- InitY + ButtonH / 2 + OffsetY / 2
                positionY = WINDOW_HEIGHT / 2 + 125 + 71/2 + 40/2,
                scaleX = 71.0,
                scaleY = 71.0
            },
            Button = {
                onClickId = "buyProperty4",
                text = "BUY",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 31.0,

                textColorNormalR = 1.0,
                textColorNormalG = 1.0,
                textColorNormalB = 1.0,
                textColorNormalA = 1.0,

                textColorHoverR = 1.0,
                textColorHoverG = 1.0,
                textColorHoverB = 1.0,
                textColorHoverA = 1.0,

                textColorActiveR = 1.0,
                textColorActiveG = 1.0,
                textColorActiveB = 1.0,
                textColorActiveA = 1.0,

                normalColorR = 0.2,
                normalColorG = 0.7,
                normalColorB = 0.2,
                normalColorA = 1.0,

                hoverColorR = 0.1,
                hoverColorG = 0.8,
                hoverColorB = 0.1,
                hoverColorA = 1.0,

                activeColorR = 0.05,
                activeColorG = 0.9,
                activeColorB = 0.05,
                activeColorA = 1.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    },
    {
        components = {
            Transform = {
                -- InitX - ButtonW / 2 - ButtonOffsetX / 2
                positionX = WINDOW_WIDTH / 2 + 200 + 71/2 + 50/2,
                -- InitY + ButtonH / 2 + OffsetY / 2
                positionY = WINDOW_HEIGHT / 2 + 125 + 71/2 + 40/2,
                scaleX = 71.0,
                scaleY = 71.0
            },
            Button = {
                onClickId = "sellProperty4",
                text = "SELL",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 31.0,

                textColorNormalR = 1.0,
                textColorNormalG = 1.0,
                textColorNormalB = 1.0,
                textColorNormalA = 1.0,

                textColorHoverR = 1.0,
                textColorHoverG = 1.0,
                textColorHoverB = 1.0,
                textColorHoverA = 1.0,

                textColorActiveR = 1.0,
                textColorActiveG = 1.0,
                textColorActiveB = 1.0,
                textColorActiveA = 1.0,

                normalColorR = 0.7,
                normalColorG = 0.2,
                normalColorB = 0.2,
                normalColorA = 1.0,

                hoverColorR = 0.6,
                hoverColorG = 0.1,
                hoverColorB = 0.1,
                hoverColorA = 1.0,

                activeColorR = 0.5,
                activeColorG = 0.05,
                activeColorB = 0.05,
                activeColorA = 1.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    },

    -- Banner
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT / 2 - 350,
                scaleX = 1014/4,
                scaleY = 221/4
            },
            Image = {
                imagePath = "houses/HousingBanner.png",

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoInputs
            }
        }
    }
}