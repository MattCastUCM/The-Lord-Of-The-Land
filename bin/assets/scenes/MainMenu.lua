scene = {
    camera = {
        components = {
            Transform = {
                positionX = 0.7,
                positionY = 0.4,
                positionZ = -1.0
            },
            CameraComponent = { 
                bgColorR = 0.0,
                bgColorG = 0.0,
                bgColorB = 0.0,
            },
        }
    },
    
    scenario = {
        components = {
            Transform = { }
        },
        children = {
            light = {
                components = {
                    Transform = {
                        positionY = 0.0,
                        rotationZ = 0.0
                    },
                    LightDirComp = {
                        directionX = 0.0,
                        directionY = -2.0,
                        directionZ = -1.0,
                        mainLight = true,
                        colorR = 1.0,
                        colorG = 1.0,
                        colorB = 1.0,
                        colorA = 1.0,
                        powerScale = 3.0
                    },  
                },
            },
            light2 = {
                components = {
                    Transform = {
                        positionY = 0.0,
                        rotationZ = 0.0
                    },
                    LightDirComp = {
                        directionX = -1.0,
                        directionY = -2.0,
                        directionZ = 0.0,
                        mainLight = false,
                        colorR = 1.0,
                        colorG = 1.0,
                        colorB = 1.0,
                        colorA = 1.0,
                        powerScale = 0.2
                    },  
                },
            },
            light3 = {
                components = {
                    Transform = {
                        positionY = 0.0,
                        rotationZ = 0.0
                    },
                    LightDirComp = {
                        directionX = 1.0,
                        directionY = -2.0,
                        directionZ = 0.0,
                        mainLight = false,
                        colorR = 1.0,
                        colorG = 1.0,
                        colorB = 1.0,
                        colorA = 1.0,
                        powerScale = 0.2
                    },  
                },
            },
            walls = {
                components = {
                    Transform = {
                        positionX = 0.0,
                        positionY = -1.9,
                        positionZ = -5.0,
                        scaleX = 1.7,
                        scaleY = 2.8,
                        scaleZ = 2.5,
                        rotationX = 0.0,
                        rotationY = 0.0,
                        rotationZ = 0.0,
                    },
                    MeshRenderer = {
                        meshName = "models/walls.mesh",
                        materialName = "wallMaterial"
                    }
                }
            },
            floor = {
                components = {
                    Transform = {
                        positionX = 0.0,
                        positionY = -3.0,
                        positionZ = -5.0,
                        scaleX = 2.5,
                        scaleY = 2.5,
                        scaleZ = 2.5,
                        rotationX = 0.0,
                        rotationY = 0.0,
                        rotationZ = 0.0,
                    },
                    MeshRenderer = {
                        meshName = "models/floor.mesh",
                        materialName = "floorMaterial"
                    }
                }
            },
            table = {
                components = {
                    Transform = {
                        positionX = 0.0,
                        positionY = -3.6,
                        positionZ = -4.0,
                        scaleX = 1.1,
                        scaleY = 1.1,
                        scaleZ = 1.1,
                        rotationX = -90.0,
                        rotationY = -90.0,
                        rotationZ = 0.0,
                    },
                    MeshRenderer = {
                        meshName = "models/Desk.mesh",
                        materialName = "materialtable"
                    }
                }
            },
            boba = {
                components = {
                    Transform = {
                        positionX = -1.7,
                        positionY = -0.6,
                        positionZ = -4.3,
                        scaleX = 0.25,
                        scaleY = 0.25,
                        scaleZ = 0.25,
                        rotationX = -90.0,
                        rotationY = -90.0,
                        rotationZ = 0.0,
                    },
                    MeshRenderer = {
                        meshName = "models/_Bobba.mesh",
                        materialName = "Material.001"
                    }
                }
            },
            computer = {
                components = {
                    Transform = {
                        positionX = 0.0,
                        positionY = 0.5,
                        positionZ = -4.3,
                        scaleX = 0.8,
                        scaleY = 0.8,
                        scaleZ = 0.8,
                        rotationX = -90.0,
                        rotationY = -90.0,
                        rotationZ = -2.0,
                    },
                    MeshRenderer = {
                        meshName = "models/ComputerMonitor.mesh",
                        materialName = "Material"
                    }
                }
            },
        }
    },


    startButton = {
        components = {
            Transform = {
                positionX = 1450.0,
                positionY = 340.0,
                scaleX = 511.0,
                scaleY = 343.0
            },
            ImageTextButton = {
                onClickId = "startGame",
                imagePathNormal = "buttons/yesButtonNormal.png",
                imagePathHover = "buttons/yesButtonHovered.png",
                imagePathActive = "buttons/yesButtonPressed.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    },
    exitButton={
        components = {
            Transform = {
                positionX = 1450.0,
                positionY = 810.0,
                scaleX = 520.0,
                scaleY = 292.0
            },
            ImageTextButton = {
                onClickId = "closeGame",
                imagePathNormal = "buttons/noButtonNormal.png",
                imagePathHover = "buttons/noButtonHovered.png",
                imagePathActive = "buttons/noButtonPressed.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    },
    bgImage = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT / 2,
                scaleX = WINDOW_WIDTH,
                scaleY = WINDOW_HEIGHT
            },
            Image = {
                imagePath = "mainMenuBackgroundg.png",
                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoBringToFrontOnFocus | ImGuiWindowFlags_NoFocusOnAppearing | ImGuiWindowFlags_NoInputs,
            }
        }
    },
}
