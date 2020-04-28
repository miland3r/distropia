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
 * @file process.h
 * @brief Header defining set of methods allowing us to call QProcess from qml.
 * @author Ulrich van Brakel <ulrich.vanbrakel@gmail.com>
 */

#include <QProcess>
#include <QVariant>

class Process : public QProcess {
    Q_OBJECT

public:
    Process(QObject *parent = 0) : QProcess(parent) { }

    Q_INVOKABLE void start(const QString &program, const QVariantList &arguments) {
        QStringList args;

        // convert QVariantList from QML to QStringList for QProcess 
        for (int i = 0; i < arguments.length(); i++)
            args << arguments[i].toString();

        QProcess::start(program, args);
    }

    Q_INVOKABLE QByteArray readAll() {
        return QProcess::readAll();
    }
    
    Q_INVOKABLE QString readAsString() {
        QByteArray data = QProcess::readAll();
        return QString(data).trimmed();
    }
    
};
