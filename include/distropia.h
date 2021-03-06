#pragma once

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
 * @file distropia.h
 * @brief Header defining main set of methods available from frontend.
 * @author Ulrich van Brakel <ulrich.vanbrakel@gmail.com>
 */

#include <QObject>

#include <fstream>
#include <iostream>
#include <pugixml.hpp>
#include <stdio.h> 
#include <string>
#include <unistd.h> 
#include <vector>

#define PORT 9100 
#define NS_INADDRSZ  4
#define NS_IN6ADDRSZ 16
#define NS_INT16SZ   2
                         
class Distropia : public QObject {
    Q_OBJECT
public:
    explicit Distropia(QObject *parent = 0);
    qint16 offset;
    qint16 size;
    
public slots:
    bool validateIP(QString address);
    bool updateFirmware(QString address);

private:
    bool isValidTarget(const std::string& ipadress);
};
