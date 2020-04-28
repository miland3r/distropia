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
 * @file main.cpp
 * @brief Main for Distopia QGuiApplication.
 * @author Ulrich van Brakel <ulrich.vanbrakel@gmail.com>
 */

#include <QDebug>
#include <QGuiApplication>
#include <QMediaPlayer>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QtQml>

#include <chrono>
#include <thread>
#include <csignal>
#include <vector>
#include <iostream>

#include "distropia.h"
#include "process.h"

namespace
{
  volatile std::sig_atomic_t gSignalStatus;
}

std::vector<std::thread> vecOfThreads;

void signal_handler(int signal) {
    gSignalStatus = signal;
  
    for (std::thread & th : vecOfThreads) {
        if (th.joinable()) {
           th.join();
       }
    }   
    exit(signal);
}

int main(int argc, char *argv[]) {
    std::signal(SIGINT, signal_handler);

    QGuiApplication app(argc, argv);
    
    QQmlApplicationEngine engine;

    Distropia backend;

    QQmlContext* ctx = engine.rootContext();
 
    ctx->setContextProperty("backend", &backend);

    qmlRegisterType<Process>("Process", 1, 0, "Process");
    
    engine.load(QUrl(QStringLiteral("qrc:resources/main.qml")));

    return app.exec();
}
