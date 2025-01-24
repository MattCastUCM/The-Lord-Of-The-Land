#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

/**
* @brief Representa una moneda
*/
class JUEGO_API debugComp : public Tapioca::Component {
public:
    COMPONENT_ID("debugComp");


    debugComp();


    void handleEvent(std::string const& id, void* info) override;
};
