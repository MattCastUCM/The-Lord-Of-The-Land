scene = {
    -- CASA 1
    {
    -- InitX --> WINDOW_WIDTH / 2 - 200
    -- InitY --> WINDOW_HEIGHT / 2 - 185
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 - 200,
                -- InitY - ImgH - OffsetY/2 - OffsetY/2
                positionY = WINDOW_HEIGHT / 2 - 185 - 117 - 40/2 - 40/2,
                scaleX = 1.0,
                scaleY = 1.0
            },
            Text = {
                text = "0$",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 42.0,

                textColorR = 0.0,
                textColorG = 0.0,
                textColorB = 0.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            },
            PriceText = {
                index = 1,
                isStock = true
            }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 - 200,
                -- InitY - ImgH / 2 - OffsetY/2
                positionY = WINDOW_HEIGHT / 2 - 185 - 117/2 - 40/2,
                -- ButtonW * 2 + ButtonOffsetX + ImgOffsetW
                scaleX = 71.0 * 2.0 + 45.0,
                scaleY = 117.0
            },
            Image = {
                imagePath = "stocks/military.png",

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 - 200,
                positionY = WINDOW_HEIGHT / 2 - 185,
                scaleX = 1.0,
                scaleY = 1.0
            },
            Text = {
                text = "0 stocks",

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
                isStock = true
            }
        }
    },
    {
        components = {
            Transform = {
                -- InitX - ButtonW / 2 - ButtonOffsetX / 2
                positionX = WINDOW_WIDTH / 2 - 200 - 71/2 - 50/2,
                -- InitY + ButtonH / 2 + OffsetY / 2
                positionY = WINDOW_HEIGHT / 2 - 185 + 71/2 + 40/2,
                scaleX = 71.0,
                scaleY = 71.0
            },
            Button = {
                onClickId = "buyStocks1",
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
                positionY = WINDOW_HEIGHT / 2 - 185 + 71/2 + 40/2,
                scaleX = 71.0,
                scaleY = 71.0
            },
            Button = {
                onClickId = "sellStocks1",
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
                positionY = WINDOW_HEIGHT / 2 + 125 - 117 - 40/2 - 40/2,
                scaleX = 1.0,
                scaleY = 1.0
            },
            Text = {
                text = "0$",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 42.0,

                textColorR = 0.0,
                textColorG = 0.0,
                textColorB = 0.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            },
            PriceText = {
                index = 2,
                isStock = true
            }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 - 200,
                -- InitY - ImgH / 2 - OffsetY/2
                positionY = WINDOW_HEIGHT / 2 + 125 - 117/2 - 40/2,
                -- ButtonW * 2 + ButtonOffsetX + ImgOffsetW
                scaleX = 71.0 * 2.0 + 45.0,
                scaleY = 117.0
            },
            Image = {
                imagePath = "stocks/agriculture.png",

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
                text = "0 stocks",

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
                isStock = true
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
                onClickId = "buyStocks2",
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
                onClickId = "sellStocks2",
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
    -- InitY --> WINDOW_HEIGHT / 2 - 185
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 + 200,
                -- InitY - ImgH - OffsetY/2 - OffsetY/2
                positionY = WINDOW_HEIGHT / 2 - 185 - 117 - 40/2 - 40/2,
                scaleX = 1.0,
                scaleY = 1.0
            },
            Text = {
                text = "0$",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 42.0,

                textColorR = 0.0,
                textColorG = 0.0,
                textColorB = 0.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            },
            PriceText = {
                index = 3,
                isStock = true
            }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 + 200,
                -- InitY - ImgH / 2 - OffsetY/2
                positionY = WINDOW_HEIGHT / 2 - 185 - 117/2 - 40/2,
                -- ButtonW * 2 + ButtonOffsetX + ImgOffsetW
                scaleX = 71.0 * 2.0 + 45.0,
                scaleY = 117.0
            },
            Image = {
                imagePath = "stocks/energy.png",

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 + 200,
                positionY = WINDOW_HEIGHT / 2 - 185,
                scaleX = 1.0,
                scaleY = 1.0
            },
            Text = {
                text = "0 stocks",

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
                isStock = true
            }
        }
    },
    {
        components = {
            Transform = {
                -- InitX - ButtonW / 2 - ButtonOffsetX / 2
                positionX = WINDOW_WIDTH / 2 + 200 - 71/2 - 50/2,
                -- InitY + ButtonH / 2 + OffsetY / 2
                positionY = WINDOW_HEIGHT / 2 - 185 + 71/2 + 40/2,
                scaleX = 71.0,
                scaleY = 71.0
            },
            Button = {
                onClickId = "buyStocks3",
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
                positionY = WINDOW_HEIGHT / 2 - 185 + 71/2 + 40/2,
                scaleX = 71.0,
                scaleY = 71.0
            },
            Button = {
                onClickId = "sellStocks3",
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
                positionY = WINDOW_HEIGHT / 2 + 125 - 117 - 40/2 - 40/2,
                scaleX = 1.0,
                scaleY = 1.0
            },
            Text = {
                text = "0$",

                textFontName = "FranklinGothinBook.ttf",
                textSize = 42.0,

                textColorR = 0.0,
                textColorG = 0.0,
                textColorB = 0.0,

                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | 
                ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            },
            PriceText = {
                index = 4,
                isStock = true
            }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2 + 200,
                -- InitY - ImgH / 2 - OffsetY/2
                positionY = WINDOW_HEIGHT / 2 + 125 - 117/2 - 40/2,
                -- ButtonW * 2 + ButtonOffsetX + ImgOffsetW
                scaleX = 71.0 * 2.0 + 45.0,
                scaleY = 117.0
            },
            Image = {
                imagePath = "stocks/medicine.jpg",

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
                text = "0 stocks",

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
                isStock = true
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
                onClickId = "buyStocks4",
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
                onClickId = "sellStocks4",
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
}