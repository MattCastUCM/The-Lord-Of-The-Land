#include "debugComp.h"


debugComp::debugComp() {
    Tapioca::logInfo("debugComp");
}


void debugComp::handleEvent(std::string const& id, void* info) {

    Tapioca::logInfo(id.c_str());
}
