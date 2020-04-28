/*
 * Copyright (C) 2020 Ulrich van Brakel
 *
 * This file is part of Distropia.
 *
 * Distropia is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * For a full copy of the GNU General Public License see the LICENCE file or
 * at <https://www.gnu.org/licenses/>
 */

/**
 * @file distropia.cpp
 * @brief Implementation of main set of methods available from frontend.
 * @author Ulrich van Brakel <ulrich.vanbrakel@gmail.com>
 */

#include "distropia.h"

Distropia::Distropia(QObject *parent) : QObject(parent) {
}

bool Distropia::validateIP(QString address) {
    
    std::string utf8_text = address.toUtf8().constData();
    if (isValidTarget(utf8_text) && isValidTarget(utf8_text)) {
        return true;
    }
    return false;
}

bool Distropia::updateFirmware(QString address) {
    
    std::string utf8_text = address.toUtf8().constData();
    //return performUpdate(utf8_text);
    return true;
}
 
bool Distropia::isValidTarget(const std::string& ipadress) {
    
    return true;
}

