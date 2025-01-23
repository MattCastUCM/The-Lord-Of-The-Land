#include "TheLordOfTheLand.h"
#include "Structure/FactoryManager.h"
#include "Structure/BasicBuilder.h"

void init() { 
    addComponentFactories(); 
}

void addComponentFactories() {
    Tapioca::logInfo("Anadiendo las factorias del juego");

    Tapioca::FactoryManager* factMngr = Tapioca::FactoryManager::instance();
}

const char* getWindowName() { return "The Lord of the Land"; }

bool getFullScreen() { return false; }

void getWindowSize(uint32_t& width, uint32_t& height) {
    width = 1280;
    height = 720;
}

void getLogicSize(uint32_t& width, uint32_t& height) { 
    width = 1920;
    height = 1080;
}

const char* getInitScene() { return "StartScene.lua"; }
