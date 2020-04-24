#include "distropia.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    distropia w;
    w.show();

    return app.exec();
}

